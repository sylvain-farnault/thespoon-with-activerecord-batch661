class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # get '/'
  def index
    @restaurants = Restaurant.all
  end

  # get 'restaurants/:id'
  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  # get 'restaurants/new'
  def new
    @restaurant = Restaurant.new
  end

  # post 'restraurants'
  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    # redirect_to restaurant_path(restaurant.id)
    redirect_to restaurants_path
  end

  # get 'restaurants/:id/edit'
  def edit
    # @restaurant = Restaurant.find(params[:id])
  end

  # patch 'restaurants/:id'
  def update
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant.id)
  end

  # delete 'restaurants/:id'
  def destroy
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
