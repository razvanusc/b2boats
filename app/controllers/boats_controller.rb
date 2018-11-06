class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
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

  def edit
    @boat = Boat.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to user_boat_path(@boat)
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to user_boats_path
  end

  def boat_params
    params.require(:boat).permit(:name, :description, :location, :price_per_hour,
      :hours, :capacity, :has_license)
  end
end
