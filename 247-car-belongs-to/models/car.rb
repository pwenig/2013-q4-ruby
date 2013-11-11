class Car < ActiveRecord::Base
	belongs_to :member, class_name: "Member", foreign_key: "member_id"   #belongs to Member database, class is Member, forgein key is member's id
end
