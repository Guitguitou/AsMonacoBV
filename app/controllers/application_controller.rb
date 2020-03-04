class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :group_id])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:password, :password_confirmation, :group_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password_confirmation, :current_password, :group_id])
  end
end
