class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
  
    # def after_sign_up_path_for(resource)
    #     users_profile_path # サインアップ後に遷移するpathを設定
    # end

    # def after_sign_in_path_for(resource)
    #     users_profile_path # ログイン後に遷移するpathを設定
    # end
  
    # def after_sign_out_path_for(resource)
    #     new_user_session_path # ログアウト後に遷移するpathを設定
    # end

    protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [ :email, :user_name, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end