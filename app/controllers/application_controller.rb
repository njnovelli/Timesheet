class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
   usermainpage_index_path
  end

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstName, :lastName, :username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstName, :lastName, :username])
  end

end
