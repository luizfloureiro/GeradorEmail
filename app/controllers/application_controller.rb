class ApplicationController < ActionController::Base

  private
  def current_user
    @current_user ||= Usuario.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to login_index_url, alert: "Usuário não autorizado." if current_user.username != "admin"
  end
end
