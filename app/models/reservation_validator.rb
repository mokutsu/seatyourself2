class ReservationValidator < ActiveModel::Validator
  def validate(reservation)
    to_early = reservation.time < reservation.restaurant.opening
    to_late = reservation.time > reservation.restaurant.closing
    reservation.errors[:open] << "The Restaurant is not open at this time" if to_early || to_late
  end


end
