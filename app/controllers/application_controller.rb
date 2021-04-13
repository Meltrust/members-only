class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_parameters, if: :devise_controller?

  protected

  def configure_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:username, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:username, :email, :password, :password_confirmation, :current_password)
    end
  end
end
