class VariousInsurance < ApplicationRecord
  has_many :jobs, through: :various_insurance_jobs
  has_many :various_insurance_jobs
end
