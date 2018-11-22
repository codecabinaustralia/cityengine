class Site < ApplicationRecord
	has_many :skill_progressions
	has_many :level_progressions
end
