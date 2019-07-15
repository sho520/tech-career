class Job < ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :employee_type, optional: true
  belongs_to :number_of_employee, optional: true
  belongs_to :industry, optional: true
  belongs_to :job_state, optional: true
  has_many :students, through: :student_jobs
  has_many :student_jobs

end
