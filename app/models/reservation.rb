class Reservation < ActiveRecord::Base

  validates_with ReservationValidator

  belongs_to :customer
  belongs_to :restaurant

end
