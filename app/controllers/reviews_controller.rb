class ReviewsController < ApplicationController
  def index
    if boat_id = params[:boat_id]
      @boat = Boat.find(boat_id)
      @reviews = @boat.reviews
    else
      @reviews = Review.all
    end
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @review = Review.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @review = Review.new(review_params)
    @review.boat = @boat
    if @review.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def destroy
    @boat = Boat.find(params[:boat_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to boat_path(@boat)
  end

    def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
