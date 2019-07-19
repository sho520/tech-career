class AddColumnToJob2 < ActiveRecord::Migration[5.2]
  def change
    change_column :language_jobs, :language_id, :integer, {foreign_key: true}
    change_column :language_jobs, :job_id, :integer, {foreign_key: true}
    change_column :various_insurance_jobs, :various_insurance_id, :integer, {foreign_key: true}
    change_column :various_insurance_jobs, :job_id, :integer, {foreign_key: true}
    change_column :various_allowance_jobs, :various_allowance_id, :integer, {foreign_key: true}
    change_column :various_allowance_jobs, :job_id, :integer, {foreign_key: true}
    change_column :holiday_vacation_jobs, :holiday_vacation_id, :integer, {foreign_key: true}
    change_column :holiday_vacation_jobs, :job_id, :integer, {foreign_key: true}
  end
end
