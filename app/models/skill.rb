class Skill < ApplicationRecord
  belongs_to :level
  has_many :skill_progressions
end
