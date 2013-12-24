class Manage::ProductValueController < ManageController
	def new
		@product = Manage::Product.find(params[:product_id])
		@order = Order.find(params[:order_id])
		@value = ProductValue.new
	end

	def create
		@value = ProductValue.new(value_params)
		@value.save
		redirect_to history_manage_orders_path
	end

	def update
		@value = ProductValue.new(value_params)
		@value.save
		redirect_to history_manage_orders_path
	end

	private
    def value_params
      params.require(:value).permit(:user_id, :product_id, :value, :order_id)
    end
end
