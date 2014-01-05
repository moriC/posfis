class Admin::LogsController < AdminController
	before_action :set_log, only: [:show, :edit, :update, :destroy]

	def index
		@logs = Log.all
	end

	def new
		@users = User.all
		@log_types = LogType.all
		@log = Log.new
	end

	def edit
		@users = User.all
		@log_types = LogType.all
	end

	def create
		@log = Log.new(log_params)
		if @log.for_user_id == nil
			@log.for_user_id = 0
		end
		if @log.save
			redirect_to admin_logs_path
		else
			redirect_to new_admin_logs_path
		end
	end

	def update
		if @log.update(log_params)
			redirect_to admin_logs_path
		else
			redirect_to edit_admin_logs_path
		end
		
	end

	private
		def set_log
      @log = Log.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_params
      params.require(:log).permit(:for_user_id, :log_type, :log_message)
    end

end
