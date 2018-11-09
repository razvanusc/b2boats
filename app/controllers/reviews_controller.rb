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
    authorize @review
  end

  def create
    @user = current_user
    @boat = Boat.find(params[:boat_id])
    @review = Review.new(review_params)
    authorize @review
    @review.user = @user
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
    authorize @review
    @review.destroy
    redirect_to boat_path(@boat)
  end

    def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
