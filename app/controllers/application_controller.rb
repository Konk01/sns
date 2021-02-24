class ApplicationController < ActionController::Base
	protect_from_forgery wtih: :exception
	
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	protected
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :Avatar])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name, :Avatar])
	end
end
