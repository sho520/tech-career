class Language < ApplicationRecord
  has_many :jobs, through: :language_jobs
  has_many :language_jobs
end
