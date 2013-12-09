class MarketController < ApplicationController
	layout 'market'
	include ActiveMerchant::Billing
	before_action :set_params, only: [:purchase, :confirm]

	def purchase
		@market = Order.new
	end

	def confirm
		@confirm = Order.new(order_params)
	end

	def checkout
		setup_response = EXPRESS_GATEWAY.setup_purchase(5000,
			:currency_code => :JPY,
	    :ip                => request.remote_ip,
	    :return_url        => url_for(:action => 'success', :only_path => false),
	    :cancel_return_url => url_for(:action => 'index', :only_path => false)
	  )
  redirect_to EXPRESS_GATEWAY.redirect_url_for(setup_response.token)
	end

	def success
		redirect_to :action => 'index' unless params[:token]
  
	  details_response = EXPRESS_GATEWAY.details_for(params[:token])
	  
	  if !details_response.success?
	    @message = details_response.message
	    render :action => 'error'
	    return
	  end
	    
	  @address = details_response.address
	end

	def complete
	  purchase = EXPRESS_GATEWAY.purchase(5000,
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
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_params
      @product = Manage::Product.find(params[:id])
    end

    def order_params
    	params.require(:order).permit(:request_count, :price, :name, :address_number, :address, :user_email, :user_tel)
    end
end
