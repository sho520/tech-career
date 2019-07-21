class VariousAllowance < ApplicationRecord
  has_many :various_allowance_jobs
  has_many :jobs, through: :various_allowance_jobs
end
