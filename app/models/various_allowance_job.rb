class VariousAllowanceJob < ApplicationRecord
  belongs_to :various_allowance, optional: true
  belongs_to :job, optional: true
end
