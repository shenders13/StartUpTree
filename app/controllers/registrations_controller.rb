class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    User.all.last.start_up ? '/start_ups/new' : '/'
  end
end
