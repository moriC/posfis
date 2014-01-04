class Manage::DealerInfoController < ManageController
	before_action :set_dealer_info, only: [:index, :show, :edit, :update, :destroy]

	def index
	end

	def new
		@dealer_info = AsctInfo.new
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end

	private
		def set_dealer_info
			@dealer_info = AsctInfo.where(user_id: current_user.id)
		end

		def edaler_info_params
      params.require(:asct_infos).permit(:dealer, :manager, :manager_number, :manager_address, :manager_tel, :manager_mail, :additional_costs, :order_method, :pay_method, :pay_limit, :delivered_time, :return_method, :user_id)
    end

end
