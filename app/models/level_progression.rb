class LevelProgression < ApplicationRecord
  belongs_to :site
  belongs_to :student
  belongs_to :level
  belongs_to :teacher
end
