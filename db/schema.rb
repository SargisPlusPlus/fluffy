# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160124041130) do

  create_table "abouts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "salary_range"
    t.string   "looking_for"
    t.integer  "travel_range"
    t.boolean  "transportation"
    t.string   "sex"
    t.string   "race"
    t.boolean  "veteran"
    t.boolean  "felony"
    t.boolean  "disability"
    t.boolean  "us_citizen"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "abouts", ["user_id"], name: "index_abouts_on_user_id"

  create_table "contact_infos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "phone"
    t.string   "website"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contact_infos", ["user_id"], name: "index_contact_infos_on_user_id"

  create_table "employer_profiles", force: :cascade do |t|
    t.integer  "employer_id"
    t.string   "title"
    t.string   "logo"
    t.string   "location"
    t.string   "link"
    t.string   "summary"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "employer_profiles", ["employer_id"], name: "index_employer_profiles_on_employer_id"

  create_table "employers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "confirmation_number"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "employers", ["email"], name: "index_employers_on_email", unique: true
  add_index "employers", ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true

  create_table "offers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "employer_id"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "offers", ["employer_id"], name: "index_offers_on_employer_id"
  add_index "offers", ["user_id"], name: "index_offers_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "category"
    t.string   "picture_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "professions", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "summary"
    t.text     "education"
    t.text     "work_history"
    t.text     "skills"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "professions", ["user_id"], name: "index_professions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: :cascade do |t|
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "videos", ["post_id"], name: "index_videos_on_post_id"

end
