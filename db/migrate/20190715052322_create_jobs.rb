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
      t.references :location, null: true
      t.text :business, null: true
      t.text :company_feature, null: true
      t.string :position, null: true
      t.references :employee_type, null: true
      t.text :job_description, null: true
      t.text :required_work_experience, null: true
      t.string :working_hours, null: true
      t.string :break_time, null: true
      t.string :about_overtime, null: true
      t.string :recruitment_period, null: true
      t.integer :number_of_recruitment_people, null: true
      t.string :employment_period, null: true
      t.text :add_info_working_time, null: true
      t.string :salary_type, null: true
      t.integer :basic_salary, null: true
      t.string :promotion, null: true
      t.string :bonus, null: true
      t.integer :min_annual_income, null: true
      t.integer :max_annual_income, null: true
      t.text :add_info_income, null: true
      t.string :example_annual_income, null: true
      t.string :trial_period, null: true
      t.text :add_info_trial_period, null: true
      t.string :discretionary_labor_system, null: true
      t.integer :fixed_overtime_pay, null: true
      t.text :add_info_fixed_overtime_pay, null: true
      t.string :age, null: true
      t.text :reason_for_age_restriction, null: true
      t.integer :number_of_interviews, null: true
      t.string :educational_background, null: true
      t.text :required_qualification, null: true
      t.text :ideal_candidate, null: true
      t.text :contents_of_test, null: true
      t.string :commute_allowance, null: true
      t.string :overtime_pay, null: true
      t.string :other_allowance, null: true
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
