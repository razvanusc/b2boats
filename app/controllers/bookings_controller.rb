class BookingsController < ApplicationController
  def index
    if user_id = params[:user_id]
      @user = User.find(user_id)
      @bookings = policy_scope(Booking).where(user: @user)
    else
      @bookings = policy_scope(Booking)
    end
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @boat = Boat.find(params[:boat_id])

    if @boat.user == current_user
      raise "Not allowed to rent your own boat"
    end

    @booking = Booking.new(booking_params)
    authorize @booking
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

  def confirm
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update! status: "confirmed"
    redirect_to user_path(current_user)
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update!(booking_params)
    @user = @booking.user
    redirect_to bookings_path
  end

  private
  def booking_params
     params.require(:booking).permit(:start_time, :end_time, :status)
  end
end
