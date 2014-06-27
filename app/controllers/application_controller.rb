class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
 
  protected
  	def configure_permitted_parameters
    	devise_parameter_sanitizer.for(:sign_up) do |u|
      		u.permit(:usuario_nombre_usuario, :usuario_nombre, :comuna_id, :usuario_rut, :usuario_apellidopat, :usuario_apellidomat, 
            :email, :password, :password_confirmation, :usuario_vip, :remember_me, :usuario_calle, :usuario_numero_calle, :usuario_villa)
    	end
    	devise_parameter_sanitizer.for(:sign_in) do |u|
      		u.permit(:email, :password, :remember_me)
    	end
  	end
end
