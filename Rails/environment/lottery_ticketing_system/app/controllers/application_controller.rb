class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  acts_as_token_authentication_handler_for Customer

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age])
  end
end
