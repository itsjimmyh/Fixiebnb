class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:user][:username])

    if @user
      log_in!(@user)
      redirect_to user_url
    else
      render :new
    end
  end

  def new
    @user = User.new
    render :new
  end

  def destroy
    log_out!
    redirect_to new_session_url
  end
end
