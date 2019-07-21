class Job < ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :employee_type, optional: true
  belongs_to :number_of_employee, optional: true
  belongs_to :industry, optional: true
  belongs_to :job_state, optional: true
  has_many :student_jobs
  has_many :students, through: :student_jobs
  has_many :language_jobs
  has_many :languages, through: :language_jobs
  has_many :holiday_vacation_jobs
  has_many :holiday_vacations, through: :holiday_vacation_jobs
  has_many :various_allowance_jobs
  has_many :various_allowances, through: :various_allowance_jobs
  has_many :various_insurance_jobs
  has_many :various_insurances, through: :various_insurance_jobs
end
