class BoatsController < ApplicationController
  def index
    if user_id = params[:user_id]
      @user = User.find(user_id)
      @boats = @user.boats

      # @boats = Boat.where(user_id: user_id)
    else
      @boats = Boat.all
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)

    @boat.user = current_user

    @boat.save!

    if @boat.save
      redirect_to boats_path
    else
      render :new
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
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
