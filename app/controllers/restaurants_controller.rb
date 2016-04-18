class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new(restaurant_id: params[:id] )

    @form_time_range = []
      time_option = @restaurant.opening
    while time_option < @restaurant.closing  
      @form_time_range << time_option
      time_option = time_option+1.hour
    end
  end

  def index
    @restaurants = Restaurant.all
  end


end
