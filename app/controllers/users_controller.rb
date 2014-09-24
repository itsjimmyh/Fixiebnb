class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in!(@user)
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def new
    @user = User.new
    render :new
  end

  def show
    redirect_to root_url unless current_user
    # if current_user.nil?
    #   redirect_to new_session_url
    #   return
    # end

    @user = current_user
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
