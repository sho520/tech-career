class HolidayVacationJob < ApplicationRecord
  belongs_to :holiday_vacation, optional: true
  belongs_to :job, optional: true
end
