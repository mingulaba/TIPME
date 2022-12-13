class RestaurantsController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @restaurants = policy_scope(Restaurant)
  end

  def new
    @user = current_user
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    authorize @restaurant
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
