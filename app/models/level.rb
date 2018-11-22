class Level < ApplicationRecord
	has_many :skills
	has_many :level_progressions
end
