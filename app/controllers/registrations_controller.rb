class RegistrationsController < Devise::RegistrationsController

  protected

    def after_sign_in_path_for(resource)
      manage_path
    end
end