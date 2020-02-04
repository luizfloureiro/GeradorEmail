class ApplicationController < ActionController::Base

  private
  def current_user
    @current_user ||= Usuario.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
