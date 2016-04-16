class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :customers, through: :reservations

    validates :name, presence: true
end
