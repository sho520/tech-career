class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name, null: false 
      t.references :industry, null: false
      t.integer :capital
      t.integer :sales
      t.references :number_of_employee, null: false
      t.string :establish_date 
      t.string :market_information 
      t.string :market_system
      t.text :url
      t.references :location, null: false
      t.text :business
      t.text :company_feature
      t.string :position, null: false
      t.references :employment_type, null: false
      t.text :job_description, null: false
      t.text :required_work_experience
      t.string :working_hours
      t.string :break_time
      t.string :about_overtime
      t.string :recruitment_period
      t.integer :number_of_recruitment_poeple
      t.string :employment_period
      t.text :add_info_working_time
      t.string :salary_type
      t.integer :basic_salary
      t.string :promotion
      t.string :bonus
      t.integer :annual_income
      t.text :add_info_income
      t.string :example_annual_income
      t.string :trial_period
      t.text :add_info_trial_period
      t.string :discretionary_labor_system
      t.integer :fixed_overtime_pay
      t.text :add_info_fixed_overtime_pay
      t.string :age
      t.text :reason_for_age_restriction
      t.integer :number_of_interviews
      t.string :educational_background
      t.text :required_qualification
      t.text :ideal_candidate
      t.text :contents_of_test
      t.string :commute_allowance
      t.string :overtime_pay
      t.string :other_allowance
      t.string :various_insurance
      t.string :various_allowances
      t.string :holiday_vacation
      t.string :yearly_holiday
      t.string :work_transfer
      t.string :working_place_1
      t.string :working_place_2
      t.string :working_place_3
      t.string :working_place_4
      t.text :remark
      t.references :job_state, null: false
      t.timestamps
    end
  end
end
