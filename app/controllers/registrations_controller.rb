class RegistrationsController < ApplicationController
  skip_before_filter :ensure_authenticated, :new

  def new
    @user = User.new
  end

  def create
    User.create(params[:user])
    redirect_to login_path
  end
end
