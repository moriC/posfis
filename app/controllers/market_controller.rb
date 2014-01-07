class MarketController < ApplicationController
	layout 'market'
	include ActiveMerchant::Billing
	before_action :set_params, only: [:dealer_info, :purchase, :confirm, :checkout]

	def dealer_info
		@dealer_info = AsctInfo.where(user_id: @product.id).first
		@user = User.find(@product.user_id)
		friends = Manage::Friend.select("to_user_id").where(:from_user_id => @product.user_id)
    @friends = Manage::Friend.where(:to_user_id => friends)
    @products = Manage::Product.where(:user_id => @product.user_id)
	end

	def purchase
		@market = Order.new
	end

	def confirm
		@confirm = Order.new(order_params)
	end

	def checkout
		@confirm = Order.new(order_params)
		price = @confirm.price.to_i * @confirm.request_count.to_i
		$order = @confirm
		setup_response = express_gateway.setup_purchase(price,
			:currency_code => :JPY,
	    :ip                => request.remote_ip,
	    :return_url        => url_for(:action => 'success', :only_path => false),
	    :cancel_return_url => url_for(:action => 'purchase', :only_path => false)
	  )
  redirect_to express_gateway.redirect_url_for(setup_response.token)
	end

	def success
		redirect_to :action => 'purchase' unless params[:token]
  
	  details_response = express_gateway.details_for(params[:token])
	  
	  if !details_response.success?
	    @message = details_response.message
	    render :action => 'error'
	    return
	  end
	    
	  @address = details_response.address
	end

	def complete
	  purchase = express_gateway.purchase(5000,
	  	:currency_code => :JPY,
	    :ip       => request.remote_ip,
	    :payer_id => params[:payer_id],
	    :token    => params[:token]
	  )
	  
	  if !purchase.success?
	    @message = purchase.message
	    render :action => 'error'
	    return
	  end
	  if user_signed_in?
	  	$order.buyer_user_id = current_user.id
	  else
	  	$order.buyer_user_id = 0
	  end
	  $order.condition = 0
	  $order.product.count = $order.product.count - 1
	  $order.save
	  @log = Log.new
	  @log.for_user_id = $order.buyer_user_id
	  @log.log_type = 3
	  @log.save

	  @log = Log.new
	  @log.for_user_id = $order.business_user_id
	  @log.log_type = 4
	  @log.save

	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_params
      @product = Manage::Product.find(params[:id])
    end

    def order_params
    	params.require(:order).permit(:business_user_id, :product_id, :request_count, :price, :name, :address_number, :address, :user_email, :user_tel)
    end

    def express_gateway
    	@express_product = Manage::Product.find(params[:id])
    	@express_user = User.find(@express_product.user_id)
    	@gateway ||= PaypalExpressGateway.new(
		    :login => @express_user.paypal_login,
		    :password => @express_user.paypal_password,
		    :signature => @express_user.paypal_signature
		  )
    end
end
