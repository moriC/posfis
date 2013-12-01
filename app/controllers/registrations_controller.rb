class RegistrationsController < Devise::RegistrationsController
	def edit
		render :layout => 'manage'
	end

	def after_update_path_for(resource)
      manage_index_path
    end
end