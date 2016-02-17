class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # to make methods available to views
  helper_method :current_user, :logged_in?
  
  # if current user has chef id, save it -- memoization, helps optimize performance
  def current_user
    @current_user ||= Chef.find(session[:chef_id]) if session[:chef_id]
  end
  
  # check to see if current user is logged in
  def logged_in?
    !!current_user
  end
end
