class Training < ApplicationRecord
  SEX = ["Masculin", "Féminin", "Mixte"]
  GROUPS = ["Elite", "Groupe 1", "Groupe 2", "Groupe 3", "Groupe 4", "Groupe 5", "Coupe de France", "M20", "M17", "M15", "M13", "Baby-volley"]
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :group, presence: true, inclusion: { in: GROUPS }
  validates :sex, presence: true, inclusion: { in: SEX }
end
