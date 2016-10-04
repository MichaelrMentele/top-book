class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Welcome, " + @user.username + "! You're signed up."
      # auto log user and set to defualt user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "I'm sorry that username is already taken."
      render :new
    end
  end

  private

  def user_params
    # sanitize/validate with strong parameters
    params.require(:user).permit(:username, :password)
  end
end