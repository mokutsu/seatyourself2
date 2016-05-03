class Reservation < ActiveRecord::Base
  validates :restaurant_id, :customer_id, :date, :time, :party_size, presence: true
  validates_with ReservationValidator
  validate :reservation_validation_list
  belongs_to :customer
  belongs_to :restaurant

  def reservation_validation_list
    # check_presence
    capacity_available
    massive_partysize
  end
    #
    # def check_presence
    #   if :restaurant_id == nil || :customer_id == nil || :date == nil
    #     errors.add(:field, "this is needed!")
    #     return
    #   end
    #   end
    def capacity_available
        if self.restaurant.availability(self.party_size, self.time) < 0
          errors.add(:party_size, "Inadequate capacity")
        end
    end

    def massive_partysize
        if self.party_size > 30
          errors.add(:party_size, "Party size exceeds 30, please call restaurant")
        end
    end
end
