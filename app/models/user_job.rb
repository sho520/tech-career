class UserJob < ApplicationRecord
  belongs_to :student
  belongs_to :job
  belongs_to :user_job_status
end
