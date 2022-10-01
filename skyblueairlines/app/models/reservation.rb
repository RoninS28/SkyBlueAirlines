class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flight
  validates :no_of_passengers, presence: true
  validates :amenities, presence: true
  validates :ticket_class, presence: true
  validates :cost, presence: true

  scope :filter_by_user_id, -> (user_id) {where user_id: user_id}

end
