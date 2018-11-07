class BookingsController < ApplicationController
  def index
    if user_id = params[:user_id]
      @user = User.find(user_id)
      @bookings = @user.bookings
    else
      @bookings = Booking.all
    end
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat = @boat

    if @booking.save
      @booking.status = "pending"  #update status
      @booking.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update!(booking_params)
    @user = @booking.user
    redirect_to user_bookings_path(@user)
  end

  private
  def booking_params
     params.require(:booking).permit(:start_time, :end_time)
  end
end
