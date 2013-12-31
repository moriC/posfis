class Manage::OrdersController < ManageController

	def index
		@orders = Order.where(:business_user_id => current_user.id)
	end

	def history
		@orders = Order.where(:buyer_user_id => current_user.id)
	end

	def show
		@order = Order.find(params[:id])
	end

	def next_phase
		@order = Order.find(params[:id])
		@order.condition = @order.condition.to_i + 1
		@order.save
		@order.create_activity(:next_phase,
      :owner => proc {|controller, model| controller.current_user},
      :params => {
        :condition => @order.condition
      }
    )
	end
end