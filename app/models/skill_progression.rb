class SkillProgression < ApplicationRecord
  belongs_to :site
  belongs_to :student
  belongs_to :skill
  belongs_to :teacher

end
