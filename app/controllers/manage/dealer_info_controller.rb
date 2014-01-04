class Manage::DealerInfoController < ManageController
	before_action :set_dealer_info, only: [:index, :show, :update, :destroy]

	def index
	end

	def new
		@dealer_info = AsctInfo.new
	end

	def edit
	end

	def create
		@dealer_info = AsctInfo.new(edaler_info_params)
    @dealer_info.user_id = current_user.id

    if @dealer_info.save
      redirect_to manage_dealer_info_index_path
    else
      redirect_to new_manage_dealer_info_index_path
    end
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
      params.require(:asct_info).permit(:dealer, :manager, :manager_number, :manager_address, :manager_tel, :manager_mail, :additional_costs, :order_method, :pay_method, :pay_limit, :delivered_time, :return_method, :user_id)
    end

end
