class Reservation < ActiveRecord::Base

  belongs_to :customer
  belongs_to :restaurant

  validates :restaurant_id, :customer_id, :date, :time, presence: true

  validates :date, numericality: {greater_than: Proc.new{ |date| Date.today}} <__ DOESN"T WORK!!!


#   current_date = Time.now.strfrtime("%Y-%m-%d")
#
# >> Time.now.strftime("%d/%m/%Y %H:%M")
# => "14/09/2011 14:09"

end
