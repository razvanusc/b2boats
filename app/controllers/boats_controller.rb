class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
    @user = User.find(params[:user_id])
  end

  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      redirect_to user_boat_path(@boat)
    else
      render :new
    end
  end

  def boat_params
    params.require(:boat).permit(:name, :description, :location, :price_per_hour,
      :hours, :capacity, :has_license)
  end
end
