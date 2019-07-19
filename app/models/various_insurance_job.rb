class VariousInsuranceJob < ApplicationRecord
  belongs_to :various_insurance, optional: true
  belongs_to :job, optional: true
end
