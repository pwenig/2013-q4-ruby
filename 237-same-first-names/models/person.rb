class Person < ActiveRecord::Base
  validates :first_name,   presence: true
  validates :last_name,    presence: true
  validates :phone_number, presence: true
end
