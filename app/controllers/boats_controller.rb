class BoatsController < ApplicationController
  def index
    if user_id = params[:user_id]
      @user = User.find(user_id)
      @boats = @user.boats
    else
      @boats = Boat.all
    end
  end

  def show
    @boat = Boat.find(params[:id])

    @boat.geocode

    @markers = [
      {
        lat: @boat.latitude,
        lng: @boat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)

    @boat.user = current_user


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
    redirect_to boats_path
  end


  def boat_params
    params.require(:boat).permit(:name, :description, :location, :price_per_hour,
      :hours, :capacity, :has_license, :photo, :latitude, :longitude)
  end
end
