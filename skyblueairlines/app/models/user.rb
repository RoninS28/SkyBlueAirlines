class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  validates :email, presence: true, uniqueness: true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: 'Invalid Email Address'}
  validates :mobile, presence: true, uniqueness: true, format: {with: /\A[0-9]{10}\Z/, message: 'Invalid Mobile Number'}
  validates :credit_card_number, presence: true, format: {with: /\A[0-9]{12}\Z/, message: 'Invalid Credit Format. Should be [XXXXXXXXXXXX](12)'}
  validates :name, presence: true

end
