class Manage::ProductValueController < ManageController
	def new
		@product = Manage::Product.find(params[:product_id])
	end

	def edit
		@product = Manage::Product.find(params[:product_id])
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:order_id])
		@order.product_value = params[:value].to_i
		@order.update(value_params)
		redirect_to history_manage_orders_path
	end

	private
    def value_params
      params.permit(:product_value)
    end
end
