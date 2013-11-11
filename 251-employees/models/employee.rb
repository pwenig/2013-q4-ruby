class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  belongs_to :company, class_name:"Company", foreign_key:"company_id"
end
