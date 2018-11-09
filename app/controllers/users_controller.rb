class UsersController < ApplicationController

  def show
    #this displays the bookings for the user
    @user = User.find(params[:id])

    if params[:show]
      @bookings = @user.bookings.where(status: params[:show])
    else
      @bookings = @user.bookings
    end
    authorize @user

    if params[:show]
      @bookings_for_boats = @user.bookings_for_boats.where(status: params[:show])
    else
      @bookings_for_boats = @user.bookings_for_boats
    end
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
    if @user.save
      redirect_to user_path(@user)
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
