class Training < ApplicationRecord
  SEX = ["Masculin", "Féminin", "Mixte"]
  has_many :bookings, dependent: :destroy
  belongs_to :group
  has_one_attached :photo
  validates :name, presence: true
  validates :training_type, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :sex, presence: true, inclusion: { in: SEX }
end
