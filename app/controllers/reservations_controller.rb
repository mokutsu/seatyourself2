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

  def show
    @reservation = Reservation.find(params[:id])
    @restaurant = Restaurant.find_by(id: @reservation.restaurant_id)
end

  def edit
    @reservation = Reservation.find(params[:id])
    @restaurant = Restaurant.find_by(id: @reservation.restaurant_id)
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update_attributes(reservation_params)
      redirect_to customer_path(current_customer)
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @restaurant = Restaurant.find_by(id: @reservation.restaurant_id)

    @reservation.destroy
    redirect_to customer_path(current_customer)
  end
  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :restaurant_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
