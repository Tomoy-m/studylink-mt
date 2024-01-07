class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?  #   このサイト参照 https://zenn.dev/ganmo3/articles/8ae23a01dd1206

  def after_sign_in_path_for(resource)
    homes_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email])
  end
end
