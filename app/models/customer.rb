class Customer < ActiveRecord::Base
  has_secure_password

  validates :name, :email, :password_confirmation, presence: true
  validates :name, length: {minimum: 2}
  validates :password,
    length: {in: 4..20, incorrect_pw_length: "password must be 4 to 20 characters"}
  validate :validation_list;

  has_many :reservations, dependent: :destroy
  has_many :restaurants, through: :reservations

  def validation_list
    if self.name == nil || self.email == nil || self.password == nil
      return
    end
    numpresent = self.password.match(/\d/)? 1:0
    if numpresent == 0
      errors.add(:password, 'requires at least 1 digit')
    end
    spacepresent = self.password.match(/\s/)? 1:0
    if spacepresent == 1
      errors.add(:password, 'spaces are invalid. please use other character')
    end
    emailaddress = self.email.match(/\S+@\S+.\S/)? 1:0
    if emailaddress == 0
      errors.add(:email, "check format (requires @, and domain name) #{emailaddress}, #{:email}, #{self.email}")
    end
  end


end
