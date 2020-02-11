class Training < ApplicationRecord
  has_many :bookings
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :group, presence: true
end
