class Player < ActiveRecord::Base
	belongs_to :team, class_name:"Team", foreign_key:"team_id"	#keep an eye on the spacing
end
