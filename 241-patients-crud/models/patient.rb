class Patient < ActiveRecord::Base
  validates :systolic,  presence: true
  validates :diastolic, presence: true
end
