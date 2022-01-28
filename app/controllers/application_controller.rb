class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    about_path
  end
  #ログイン後→"/users/id(users_show)"へ


  def after_sign_out_path_for(resource)
    root_path
  end
  #ログアウト後→"/" "homes#top"へ

  protected
  #ストングパラメータ
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  #サインアップが行われる前に名前の受付を許可

end
