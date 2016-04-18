class ReservationValidator < ActiveModel::Validator
  def validate(reservation)
    #binding.pry
#this works, there is an issue with timezones in the seed
    to_early = reservation.time < reservation.restaurant.opening
    to_late = reservation.time > reservation.restaurant.closing
   reservation.errors[:open] << "The Restaurant is not open at this time" if to_early || to_late


  #  binding.pry

  end


end
