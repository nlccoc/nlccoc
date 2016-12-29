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

ActiveRecord::Schema.define(version: 20161229224027) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "event_categories", force: :cascade do |t|
    t.integer "event_id"
    t.integer "category_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string   "name"
    t.string   "variable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.string   "location"
    t.text     "short_desc"
    t.datetime "datetime"
    t.integer  "event_period"
  end

  create_table "libraries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "attachment"
  end

  create_table "maudios", force: :cascade do |t|
    t.string   "title"
    t.string   "path"
    t.text     "desc"
    t.integer  "length"
    t.boolean  "frontpage"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mgmts", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "mgmts", ["email"], name: "index_mgmts_on_email", unique: true
  add_index "mgmts", ["reset_password_token"], name: "index_mgmts_on_reset_password_token", unique: true

  create_table "mvideos", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.string   "path"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repeat_meta", force: :cascade do |t|
    t.integer  "event_id"
    t.datetime "repeat_start"
    t.integer  "repeat_interval"
    t.integer  "repeat_year"
    t.integer  "repeat_month"
    t.integer  "repeat_week"
    t.integer  "repeat_day"
    t.integer  "repeat_weekday"
    t.datetime "valid_until"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
