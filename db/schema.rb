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

ActiveRecord::Schema.define(version: 20140116101702) do

  create_table "expense_splits", force: true do |t|
    t.integer  "user_id"
    t.integer  "expense_id"
    t.integer  "amount_owe"
    t.integer  "amount_pay"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "deadline"
    t.integer  "owner_id"
    t.boolean  "completed"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "email"
    t.string   "mobile"
    t.integer  "photo_id"
    t.boolean  "email_pref"
    t.boolean  "mobile_pref"
    t.boolean  "remember"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
