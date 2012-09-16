class SessionsController < ApplicationController

  skip_before_filter :ensure_authenticated, :new
  
  def new
  end

  def create
    email = params[:email]
    if email.present?
      user = User.find_or_create_by_email(email)
      login_user(user)
      redirect_to home_path
    else
      redirect_to login_path
    end
    Rails.logger.ap User.all
  end

  def destroy
    logout_user(current_user)
    redirect_to login_path
  end
  
  private

  def login_user(user)
    session[:user_id] = user.id
  end

  def logout_user(user)
    session.clear
  end
end
