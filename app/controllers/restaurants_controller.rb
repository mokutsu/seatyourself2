class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new(restaurant_id: params[:id] )


  end

  def index
    @restaurants = Restaurant.all
  end


end
