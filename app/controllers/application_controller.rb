class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    # the ||= is a memorization. Says if it exists don't run the code. 
    # The curent user is available on all controllers
    @current_user = User.first #||= User.find(session[:user_id]) if session[:user_id]
  end
end
