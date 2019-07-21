class Language < ApplicationRecord
  has_many :language_jobs
  has_many :jobs, through: :language_jobs
end
