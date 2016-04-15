class Customer < ActiveRecord::Base
  has_secure_password
  validates :email, :name, presence: true

  has_many :reservations, dependent: :destroy
  has_many :restaurants, through: :reservations


end
