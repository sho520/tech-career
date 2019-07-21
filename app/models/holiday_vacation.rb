class HolidayVacation < ApplicationRecord
  has_many :holiday_vacation_jobs
  has_many :jobs, through: :holiday_vacation_jobs
end
