class Reservation < ActiveRecord::Base

  validates_with ReservationValidator

  belongs_to :customer
  belongs_to :restaurant

  validates :restaurant_id, :customer_id, :date, :time, presence: true


end
