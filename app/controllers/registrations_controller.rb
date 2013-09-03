class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(manage)
      user_path(manage)
    end
end