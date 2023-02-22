class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    # raise
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    @restaurant.save
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
