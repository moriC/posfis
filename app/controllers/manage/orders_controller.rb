class Manage::OrdersController < ManageController

	def index
		@orders = Order.where(:business_user_id => current_user.id)
	end

	def history
		@orders = Order.where(:buyer_user_id => current_user.id)
	end
end