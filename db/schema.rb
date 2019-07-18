# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_18_070037) do

  create_table "advisors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_advisors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_advisors_on_reset_password_token", unique: true
  end

  create_table "chats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "comment", null: false
    t.bigint "student_id", null: false
    t.bigint "advisor_id", null: false
    t.index ["advisor_id"], name: "index_chats_on_advisor_id"
    t.index ["student_id"], name: "index_chats_on_student_id"
  end

  create_table "employee_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "industries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "job_states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "industry_id", null: false
    t.integer "capital"
    t.integer "sales"
    t.integer "number_of_employee_id", null: false
    t.string "establish_date"
    t.string "market_information"
    t.string "market_system"
    t.text "url"
    t.integer "location_id", null: false
    t.text "business"
    t.text "company_feature"
    t.string "position", null: false
    t.integer "employment_type_id", null: false
    t.text "job_description", null: false
    t.text "required_work_experience"
    t.string "working_hours"
    t.string "break_time"
    t.string "about_overtime"
    t.string "recruitment_period"
    t.integer "number_of_recruitment_poeple"
    t.string "employment_period"
    t.text "add_info_working_time"
    t.string "salary_type"
    t.integer "basic_salary"
    t.string "promotion"
    t.string "bonus"
    t.integer "annual_income"
    t.text "add_info_income"
    t.string "example_annual_income"
    t.string "trial_period"
    t.text "add_info_trial_period"
    t.string "discretionary_labor_system"
    t.integer "fixed_overtime_pay"
    t.text "add_info_fixed_overtime_pay"
    t.string "age"
    t.text "reason_for_age_restriction"
    t.integer "number_of_interviews"
    t.string "educational_background"
    t.text "required_qualification"
    t.text "ideal_candidate"
    t.text "contents_of_test"
    t.string "commute_allowance"
    t.string "overtime_pay"
    t.string "other_allowance"
    t.string "various_insurance"
    t.string "various_allowances"
    t.string "holiday_vacation"
    t.string "yearly_holiday"
    t.string "work_transfer"
    t.string "working_place_1"
    t.string "working_place_2"
    t.string "working_place_3"
    t.string "working_place_4"
    t.text "remark"
    t.integer "job_state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employment_type_id"], name: "index_jobs_on_employment_type_id"
    t.index ["industry_id"], name: "index_jobs_on_industry_id"
    t.index ["job_state_id"], name: "index_jobs_on_job_state_id"
    t.index ["location_id"], name: "index_jobs_on_location_id"
    t.index ["number_of_employee_id"], name: "index_jobs_on_number_of_employee_id"
  end

  create_table "locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prefecture"
  end

  create_table "number_of_employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "number"
  end

  create_table "student_job_states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "job_id", null: false
    t.bigint "student_job_state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_student_jobs_on_job_id"
    t.index ["student_id"], name: "index_student_jobs_on_student_id"
    t.index ["student_job_state_id"], name: "index_student_jobs_on_student_job_state_id"
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "address"
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_day"
    t.integer "age"
    t.integer "period"
    t.string "team"
    t.string "image"
    t.bigint "advisor_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advisor_id"], name: "index_students_on_advisor_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  add_foreign_key "students", "advisors"
end
