class RestaurantsController < ApplicationController
  before_action :load_restaurant, except: [:create, :index, :new]


  def show
    @reservation = Reservation.new(restaurant_id: params[:id] )
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def update
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurants_path
    else
      render :edit
    end
  end
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :date, :time, :customer_id, :restaurant_id, :party_size)
  end
end
