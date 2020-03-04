class Group < ApplicationRecord
  has_many :trainings
  has_many :users, dependent: :destroy

  def class_for_group
    case groupe_type
    when 'Élite'
      'elite'
    when 'Groupe 1'
      '1'
    when 'Groupe 2'
      '2'
    when 'Groupe 3'
      '3'
    when 'Groupe 4'
      '4'
    when 'M20'
      'm20'
    when 'M17'
      'm17'
    when 'M15'
      'm15'
    when 'M13'
      'm13'
    when 'Baby-volley'
      'baby'
    end
  end
end
