class ReviewsController < ApplicationController
  def show
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save!
    redirect_to restaurant_path(@review.restaurant_id)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end
end
