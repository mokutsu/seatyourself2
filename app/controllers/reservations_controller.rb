class ReservationsController < ApplicationController
  before_action :load_reservation, only: [:show, :edit, :update, :destroy ]
  before_action :load_restaurant, except: [:create]
  before_action :ensure_logged_in

  def create

    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.build(reservation_params)

    @reservation.customer = current_customer
    if @reservation.save
      redirect_to restaurants_url, notice: "Reservation successful! Mission accomplished."
    else
      render 'restaurants/show', alert: "Error: Please try again."#restaurant_path(@restaurant), notice: "Error: Please try again."
    end

  end

  def show
  end

  def edit
  end

  def update
    if @reservation.update_attributes(reservation_params)
      redirect_to customer_path(current_customer), notice: "Reservation successfully updated!"
    else
      render 'reservations/show', alert: "Error: Please try again."#restaurant_path(@restaurant), notice: "Error: Please try again."
      load_reservation
    end
  end

  def destroy
    @reservation.destroy
    redirect_to customer_path(current_customer), notice: "Reservation successfully deleted."
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :restaurant_id, :party_size)
  end
  def load_restaurant
    @restaurant = Restaurant.find_by(id: @reservation.restaurant_id)
  end
  def load_reservation
    @reservation = Reservation.find(params[:id])
  end

end
