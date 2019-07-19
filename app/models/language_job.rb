class LanguageJob < ApplicationRecord
  belongs_to :language, optional: true
  belongs_to :job, optional: true
end
