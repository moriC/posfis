class Manage::UserSettingsController < ManageController

	def index
		@user = User.find(current_user.id)
	end
end
