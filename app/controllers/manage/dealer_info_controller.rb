class Manage::DealerInfoController < ManageController
	before_action :set_dealer_info, only: [:index, :show, :edit, :update, :destroy]
	
	def index
		
	end

	private
		def set_dealer_info
			@dealer_info = AsctInfo.where(user_id: current_user.id)
		end

end
