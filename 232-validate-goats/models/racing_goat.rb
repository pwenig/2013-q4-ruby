class RacingGoat < ActiveRecord::Base
	validates :name, presence: true
	validates :gender, inclusion: { in: ["female", "male"]}
end
