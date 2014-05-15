class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
    alert_message = case
      when current_user
        "You are not authorized to access this page"
      else
        "You need to login as a registered user to access this page"
      end
    redirect_to new_user_path, alert: alert_message
  end

  protected
  def after_sign_in_path_for(resource)
    home_index_path
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
