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

ActiveRecord::Schema.define(version: 2020_05_19_062303) do

  create_table "business_questions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "asktime"
    t.string "phone"
    t.string "email"
    t.string "company"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_business_questions_on_user_id"
  end

  create_table "frequent_questions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "asktime"
    t.boolean "isshown"
    t.integer "question_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "private_questions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "asktime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_type"
    t.integer "reply_state"
    t.datetime "reply_time"
    t.string "reply_title"
    t.text "reply_body"
    t.string "reply_sms"
    t.string "reply_email"
    t.integer "user_id"
    t.index ["user_id"], name: "index_private_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "company"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
