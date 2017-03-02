class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to root_url, :alert => exception.message
  end 

   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	  end

  
end
