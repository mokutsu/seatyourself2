class ReservationsController < ApplicationController
  before_action :load_restaurant
  before_action :ensure_logged_in

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.customer = current_customer
    

    if @reservation.save
      redirect_to restaurants_path, notice: "Reservation successful! Mission accomplished."
    else
      render restaurant_path(@restaurant), notice: "Error: Please try again."
    end

  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :restaurant_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
