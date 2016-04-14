class Customer < ActiveRecord::Base
  has_secure_password
  validates :email, :name, presence: true

  has_many :reservations
  has_many :restaurants, through: :reservations


end
