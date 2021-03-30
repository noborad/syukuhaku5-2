class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :start, presence: true
  validates :finish, presence: true
  validates :person, presence: true
  validates :cost, presence: true

end
