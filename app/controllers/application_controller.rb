class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :ensure_authenticated

  private
  
  def current_user
    User.find(session[:user_id])
  end
  
  def ensure_authenticated
    unless session[:user_id].present?
      redirect_to login_path
    else
      @current_user = current_user
    end
  end
end
