class Manage::DealerInfoController < ManageController
	def index
		@dealer_info = AsctInfo.where(user_id: current_user.id)
	end
end
