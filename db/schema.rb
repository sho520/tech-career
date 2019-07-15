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

ActiveRecord::Schema.define(version: 2019_07_15_053025) do

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
    t.bigint "student_id_id", null: false
    t.bigint "advisor_id_id", null: false
    t.index ["advisor_id_id"], name: "index_chats_on_advisor_id_id"
    t.index ["student_id_id"], name: "index_chats_on_student_id_id"
  end

  create_table "employee_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_time"
    t.string "part_time"
    t.string "dispatch"
  end

  create_table "industries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "SIer"
    t.string "communication__carrire"
    t.string "internet__web__service__ASP"
    t.string "web_marketing__internet_advertisement"
    t.string "mobile__application_service"
    t.string "IT_consulting"
    t.string "software__package_vendor"
    t.string "other_IT__web__telecommunication__internet"
    t.string "IoT__M2M__robot"
    t.string "AR__VR__MR"
  end

  create_table "job_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "industry_id_id", null: false
    t.integer "capital"
    t.integer "sales"
    t.bigint "number_of_employee_id_id", null: false
    t.string "establish_date"
    t.string "market_information"
    t.string "market_system"
    t.text "url"
    t.bigint "location_id", null: false
    t.text "business"
    t.text "company_feature"
    t.string "position", null: false
    t.bigint "employment_type_id", null: false
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
    t.integer "age"
    t.text "reason_for_age_restriction"
    t.integer "number_of_interviews"
    t.string "educational_background"
    t.text "required_qualification"
    t.text "ideal_candidate"
    t.text "contents_of_test"
    t.string "commut_allowance"
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
    t.bigint "status_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employment_type_id"], name: "index_jobs_on_employment_type_id"
    t.index ["industry_id_id"], name: "index_jobs_on_industry_id_id"
    t.index ["location_id"], name: "index_jobs_on_location_id"
    t.index ["number_of_employee_id_id"], name: "index_jobs_on_number_of_employee_id_id"
    t.index ["status_id_id"], name: "index_jobs_on_status_id_id"
  end

  create_table "locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prefecture"
  end

  create_table "number_of_employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "numuber_of_people"
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

  create_table "user_job_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "students", "advisors"
end
