class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

 protected
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:date_venc_month,:date_venc_year,:age,:cod,:card_Number,
    	:name,:image,:date_of_birth,:email,:lastname,:password,:password_confirmation,
    	:card_Marca,:user_type_id])
   devise_parameter_sanitizer.permit(:account_update, keys: [:date_venc,:age,:cod,:card_Number,
    	:name,:image,:date_of_birth,:email,:lastname,:password,:password_confirmation,
    	:card_Marca, :user_type_id,:date_venc_month,:date_venc_year])
end
end
