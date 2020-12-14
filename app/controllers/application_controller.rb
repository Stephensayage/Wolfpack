class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  SECRET_KEY = Rails.env == 'production' ? ENV['SECRET_KEY'] : Rails.application.secrets.secret_key_base.to_s

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
     flash[:error] = "You must be logged in"
     redirect_to login_path
    end
  end

end
