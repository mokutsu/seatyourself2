class ReservationValidator < ActiveModel::Validator

  # validates :party_size, numericality:{ only_integer: true}

  def validate(reservation)
    if reservation.restaurant_id == nil || reservation.customer_id == nil || reservation.date == nil || reservation.time == nil
      reservation.errors[:field] << "required"
      return
    end

    to_early = reservation.time < reservation.restaurant.opening
    to_late = reservation.time > reservation.restaurant.closing
    reservation.errors[:open] << "The Restaurant is not open at this time" if to_early || to_late

    past = (reservation.date < Date.today) || (reservation.date == Date.today && reservation.time.hour < Time.now.hour)
    far_future = reservation.date > Date.today + 3.months

    reservation.errors[:reservation] << "is in past." if past
    reservation.errors[:date] << "is more than 3 months in advance. Please call restaurant or book again later." if far_future

  end


end
