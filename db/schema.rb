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

ActiveRecord::Schema.define(version: 20200202171517) do

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "business_name"
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "job_applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "withdrawn_at"
    t.datetime "applied_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["job_id"], name: "index_job_applications_on_job_id", using: :btree
    t.index ["user_id"], name: "index_job_applications_on_user_id", using: :btree
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "description", limit: 65535
    t.integer  "company_id"
    t.datetime "paid_at"
    t.datetime "expires_at"
    t.datetime "closed_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["company_id"], name: "index_jobs_on_company_id", using: :btree
  end

  create_table "position_variants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_educations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "school_name"
    t.string   "degree"
    t.string   "field_of_study"
    t.integer  "start_year"
    t.integer  "start_month"
    t.integer  "end_year"
    t.integer  "end_month"
    t.string   "grade"
    t.text     "description",    limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["user_id"], name: "index_user_educations_on_user_id", using: :btree
  end

  create_table "user_experiences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.integer  "company_id"
    t.string   "title"
    t.integer  "position_variant_id"
    t.integer  "start_year"
    t.integer  "start_month"
    t.integer  "end_year"
    t.integer  "end_month"
    t.binary   "present",             limit: 65535
    t.string   "location"
    t.text     "description",         limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["company_id"], name: "index_user_experiences_on_company_id", using: :btree
    t.index ["position_variant_id"], name: "index_user_experiences_on_position_variant_id", using: :btree
    t.index ["user_id"], name: "index_user_experiences_on_user_id", using: :btree
  end

  create_table "user_profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.text     "about",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "job_applications", "jobs"
  add_foreign_key "job_applications", "users"
  add_foreign_key "jobs", "companies"
  add_foreign_key "user_educations", "users"
  add_foreign_key "user_experiences", "companies"
  add_foreign_key "user_experiences", "position_variants"
  add_foreign_key "user_experiences", "users"
  add_foreign_key "user_profiles", "users"
end
