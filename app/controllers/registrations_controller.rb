class RegistrationsController < Devise::RegistrationsController
	before_action :create_new_user

	protected
  	def create_new_user
  		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :userinfos_attributes => [ :user_name, :user_address_number, :user_address])}
  	end
end