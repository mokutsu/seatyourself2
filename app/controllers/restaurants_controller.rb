class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new(restaurant_id: params[:id] )

    @form_time_range = (@restaurant.opening.hour..@restaurant.closing.hour)
  end

  def index
    @restaurants = Restaurant.all
  end


end
