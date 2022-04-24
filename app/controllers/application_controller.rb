class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    # binding.pry
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    # update edit of avatar doesnt works
    # devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    # binding.pry
  end
end
