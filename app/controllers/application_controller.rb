class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include PublicActivity::StoreController
  include ActionView::Helpers::TextHelper  
  
  def after_sign_in_path_for(resource)
    manage_index_path
  end

	protected

	def configure_permitted_parameters
	 devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_name, :email, :password, :user_address_number, :user_address, :user_type, :user_auth, :avatar) }
   devise_parameter_sanitizer.for(:account_update) { |f| f.permit(:user_name, :email, :password, :user_address_number, :user_address, :user_type, :user_auth, :avatar, :password_confirmation, :current_password) }
	end
end
