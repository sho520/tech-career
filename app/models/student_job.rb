class StudentJob < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :job, optional: true
  belongs_to :student_job_state, optional: true
end
