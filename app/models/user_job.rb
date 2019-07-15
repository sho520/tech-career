class UserJob < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :job, optional: true
  belongs_to :user_job_state, optional: true
end
