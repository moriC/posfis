class Manage::OrdersController < ManageController

	def index

	end

	def history
		@orders = Order.where(:buyer_user_id => current_user.id)
	end
end