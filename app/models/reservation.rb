class Reservation < ActiveRecord::Base
  validates :restaurant_id, :customer_id, :date, :time, :party_size, presence: true
  validates_with ReservationValidator
  validate :field_present && :capacity_available && :massive_partysize


  def check_presence
      if :restaurant_id.nil? || :customer_id.nil? || :date.nil?
        errors.add(:something, "Field required")
        raise ActiveRecord::RecordInvalid, self
      end
    end

  belongs_to :customer
  belongs_to :restaurant


  def field_present

  end

  def capacity_available
    if self.party_size != nil && self.time != nil
      if self.restaurant.availability(self.party_size, self.time) < 0
        errors.add(:party_size, "Inadequate capacity")
      end
    end
  end

  def massive_partysize
    if self.party_size != nil && self.party_size > 30
        errors.add(:party_size, "Party size exceeds 30, please call restaurant")
    end
  end


end
