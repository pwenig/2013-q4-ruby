class User < ActiveRecord::Base
	validates :email, presence: {
		message: "must not be blank."
	}


end
