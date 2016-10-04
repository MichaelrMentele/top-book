class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # make available in views
  helper_method :current_user, :logged_in?

  def current_user
    # the ||= is a memorization. Says if it exists don't run the code. 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash["error"] = "Must be logged in."
      redirect_to login_path
    end
  end
end
