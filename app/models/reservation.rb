class Reservation < ActiveRecord::Base

  validates_with ReservationValidator

  belongs_to :customer
  belongs_to :restaurant

  validates :restaurant_id, :customer_id, :date, :time, presence: true

  validate :capacity_available
  # validates :party_size, numericality:{ only_integer: true}

  def capacity_available
    if self.restaurant.availability(self.party_size, self.time) < 0
    flash[:error]= "inadequate capacity"
    end
  end


end
