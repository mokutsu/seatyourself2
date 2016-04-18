class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :customers, through: :reservations
  belongs_to :category

  validates :name, presence: true


  def availability(party_size, time)
     current_capacity(time) - party_size
   end



   private
   def current_capacity(time)
     if self.reservations.empty? 
       capacity
     else
     capacity - reserved_capacity(time)
    end
   end

   def reserved_capacity(time)
     self.reservations.where(time: time.beginning_of_hour..time.end_of_hour).sum(:party_size)
   end


end
