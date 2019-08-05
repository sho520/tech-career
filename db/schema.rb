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

ActiveRecord::Schema.define(version: 2019_08_05_212945) do

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
    t.integer "student_id", null: false
    t.integer "advisor_id", null: false
    t.integer "commentspeaker", null: false
    t.index ["advisor_id"], name: "index_chats_on_advisor_id"
    t.index ["student_id"], name: "index_chats_on_student_id"
  end

  create_table "employee_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "holiday_vacation_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "holiday_vacation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["holiday_vacation_id"], name: "index_holiday_vacation_jobs_on_holiday_vacation_id"
    t.index ["job_id"], name: "index_holiday_vacation_jobs_on_job_id"
  end

  create_table "holiday_vacations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "job_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_images_on_job_id"
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
    t.integer "employee_type_id", null: false
    t.text "job_description", null: false
    t.text "required_work_experience"
    t.string "working_hours"
    t.string "break_time"
    t.string "about_overtime"
    t.string "recruitment_period"
    t.integer "number_of_recruitment_people"
    t.string "employment_period"
    t.text "add_info_working_time"
    t.string "salary_type"
    t.integer "basic_salary"
    t.string "promotion"
    t.string "bonus"
    t.integer "min_annual_income"
    t.integer "max_annual_income"
    t.text "add_info_income"
    t.string "example_annual_income"
    t.string "trial_period"
    t.text "add_info_trial_period"
    t.string "discretionary_labor_system"
    t.integer "fixed_overtime_pay"
    t.text "add_info_fixed_overtime_pay"
    t.string "min_age"
    t.string "max_age"
    t.text "reason_for_age_restriction"
    t.integer "number_of_interviews"
    t.string "educational_background"
    t.text "required_qualification"
    t.text "ideal_candidate"
    t.text "contents_of_test"
    t.string "commute_allowance"
    t.string "overtime_pay"
    t.string "other_allowance"
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
    t.string "image_url"
    t.string "image"
    t.index ["employee_type_id"], name: "index_jobs_on_employee_type_id"
    t.index ["industry_id"], name: "index_jobs_on_industry_id"
    t.index ["job_state_id"], name: "index_jobs_on_job_state_id"
    t.index ["location_id"], name: "index_jobs_on_location_id"
    t.index ["number_of_employee_id"], name: "index_jobs_on_number_of_employee_id"
  end

  create_table "language_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_language_jobs_on_job_id"
    t.index ["language_id"], name: "index_language_jobs_on_language_id"
  end

  create_table "languages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "language", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "image_url"
    t.bigint "advisor_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["advisor_id"], name: "index_students_on_advisor_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "various_allowance_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "various_allowance_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_various_allowance_jobs_on_job_id"
    t.index ["various_allowance_id"], name: "index_various_allowance_jobs_on_various_allowance_id"
  end

  create_table "various_allowances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "various_insurance_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "various_insurance_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_various_insurance_jobs_on_job_id"
    t.index ["various_insurance_id"], name: "index_various_insurance_jobs_on_various_insurance_id"
  end

  create_table "various_insurances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "job_images", "jobs"
  add_foreign_key "students", "advisors"
end
