class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :first_name, :last_name, :password, :start_up) }
  end

   def after_sign_up_path_for(resource)
    "/start_ups/new"
  end

end
