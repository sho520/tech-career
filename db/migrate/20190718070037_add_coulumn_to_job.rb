class AddCoulumnToJob < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :industry_id, :integer, {foreign_key: true}
    change_column :jobs, :number_of_employee_id, :integer, {foreign_key: true}
    change_column :jobs, :location_id, :integer, {foreign_key: true}
    change_column :jobs, :employment_type_id, :integer, {foreign_key: true}
    change_column :jobs, :job_state_id, :integer, {foreign_key: true}
  end
end
