class UsersController < ApplicationController

  def show
    #this displays the bookings for the user
    @user = User.find(params[:id])
    if params[:show]
      @bookings = @user.bookings.where(status: params[:show])
    else
      @bookings =@user.bookings
    end

    @bookings_for_boats = @user.bookings_for_boats

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

  def destroy
   @user = User.find(params[:id])
   @user.destroy
   redirect_to boats_path
 end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
