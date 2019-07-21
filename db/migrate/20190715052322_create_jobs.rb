class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name, null: true
      t.references :industry, null: true
      t.integer :capital, null: true
      t.integer :sales, null: true
      t.references :number_of_employee, null: true
      t.string :establish_date, null: true
      t.string :market_information, null: true
      t.string :market_system, null: true
      t.text :url
      t.references :location, null: false
      t.text :business
      t.text :company_feature
      t.string :position, null: false
      t.references :employee_type, null: false
      t.text :job_description, null: false
      t.text :required_work_experience
      t.string :working_hours
      t.string :break_time
      t.string :about_overtime
      t.string :recruitment_period
      t.integer :number_of_recruitment_people
      t.string :employment_period
      t.text :add_info_working_time
      t.string :salary_type
      t.integer :basic_salary
      t.string :promotion
      t.string :bonus
      t.integer :min_annual_income
      t.integer :max_annual_income
      t.text :add_info_income
      t.string :example_annual_income
      t.string :trial_period
      t.text :add_info_trial_period
      t.string :discretionary_labor_system
      t.integer :fixed_overtime_pay
      t.text :add_info_fixed_overtime_pay
      t.string :min_age
      t.string :max_age
      t.text :reason_for_age_restriction
      t.integer :number_of_interviews
      t.string :educational_background
      t.text :required_qualification
      t.text :ideal_candidate
      t.text :contents_of_test
      t.string :commute_allowance
      t.string :overtime_pay
      t.string :other_allowance
      # t.string :various_insurance_id
      # t.string :various_allowance_id
      # t.string :holiday_vacation_id
      # t.string :language_id
      t.string :yearly_holiday, null: true
      t.string :work_transfer, null: true
      t.string :working_place_1, null: true
      t.string :working_place_2, null: true
      t.string :working_place_3, null: true
      t.string :working_place_4, null: true
      t.text :remark, null: true
      t.references :job_state, null: true
      t.timestamps
    end
  end
end
