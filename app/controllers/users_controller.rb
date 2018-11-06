class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.new(user_params)
    if @user.save
      redirect user_path(@user)
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
