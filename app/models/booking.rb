class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :training
  validates :status, inclusion: { in: ["En attente", "Accepté", "Refusé"] }
end
