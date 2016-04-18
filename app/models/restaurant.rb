class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :customers, through: :reservations
  belongs_to :category

  validates :name, presence: true
end
