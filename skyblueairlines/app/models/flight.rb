class Flight < ApplicationRecord
  has_many  :reservations
  validates :name, presence: true
  validates :class, presence: true
  validates :manufacturer, presence: true
  validates :originCity, presence: true, format: {with: /\A[A-Z ]+\z/, message: 'Format should be Capitalized'}
  validates :destinationCity, presence: true, format: {with: /\A[A-Z ]+\z/, message: 'Format should be Capitalized'}
  validates :destinationCity, presence: true
  validates :capacity, presence: true
  validates :status, presence: true, inclusion: {in: %w(Available Complete), message: "Status only Available or Complete"}

  scope :filter_by_originCity, -> (originCity) {where originCity: originCity}
  scope :filter_by_destinationCity, -> (destinationCity) {where destinationCity: destinationCity}



end
