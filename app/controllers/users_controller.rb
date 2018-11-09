class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if params[:show]
      @bookings = @user.bookings.where(status: params[:show])
    else
      @bookings = @user.bookings
    end
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.new(user_params)
    authorize @user
    if @user.save
      redirect user_path(@user)
    else
      render :show
    end
  end

  def destroy
   @user = User.find(params[:id])
   authorize @user
   @user.destroy
   redirect_to boats_path
 end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
