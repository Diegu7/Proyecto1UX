class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  protected
  	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :is_trainer])
  		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
