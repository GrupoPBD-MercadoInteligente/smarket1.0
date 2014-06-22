class RegistrationsController < Devise::RegistrationsController
 
  before_filter :configure_permitted_parameters
 
  protected
 
 def sign_up_params
    params.require(:usuario).permit(:usuario_nombre, :usuario_apellidopat, :usuario_apellidomat,
     :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:usuario).permit(:usuario_nombre, :usuario_apellidopat, :usuario_apellidomat,
     :email, :password, :password_confirmation, :current_password)
  end
 
end