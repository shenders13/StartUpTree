class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(resource)
    if current_user.start_up
    else
      redirect_to stages_path
      #*1000
    end
end
