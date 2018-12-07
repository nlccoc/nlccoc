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

ActiveRecord::Schema.define(version: 2017_12_31_235454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "annotations", id: :serial, force: :cascade do |t|
    t.string "osis"
    t.string "link"
    t.text "content"
    t.integer "version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", id: :serial, force: :cascade do |t|
    t.integer "number"
    t.text "osis"
    t.text "human"
    t.integer "chapters"
    t.integer "version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "human_abbr"
  end

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name"
  end

  create_table "chapters", id: :serial, force: :cascade do |t|
    t.text "reference_osis", null: false
    t.text "reference_human", null: false
    t.text "content", null: false
    t.text "previous_reference_osis"
    t.text "previous_reference_human"
    t.text "next_reference_osis"
    t.text "next_reference_human"
    t.integer "version_id"
  end

  create_table "event_categories", id: :serial, force: :cascade do |t|
    t.integer "event_id"
    t.integer "category_id"
  end

  create_table "event_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "variable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "desc"
    t.string "location"
    t.text "short_desc"
    t.datetime "datetime"
    t.integer "event_period"
  end

  create_table "featured_infos", id: :serial, force: :cascade do |t|
    t.integer "event_id"
    t.string "image_path"
    t.string "title"
    t.string "subtitle"
    t.index ["event_id"], name: "index_featured_infos_on_event_id"
  end

  create_table "libraries", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attachment"
  end

  create_table "locations", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", id: :serial, force: :cascade do |t|
    t.integer "logtype_id"
    t.text "text"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logtypes", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maudios", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "path"
    t.text "desc"
    t.integer "length"
    t.boolean "featured"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "speaker"
  end

  create_table "metadata", id: :serial, force: :cascade do |t|
    t.text "name", null: false
    t.text "value"
    t.index ["name"], name: "sqlite_autoindex_metadata_1", unique: true
  end

  create_table "mgmts", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_mgmts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_mgmts_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_mgmts_on_role_id"
  end

  create_table "mvideos", id: :serial, force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "path"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "youtubeID"
    t.integer "location_id"
  end

  create_table "newsletters", id: :serial, force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.string "path"
    t.integer "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repeat_meta", id: :serial, force: :cascade do |t|
    t.integer "event_id"
    t.datetime "repeat_start"
    t.integer "repeat_interval"
    t.integer "repeat_year"
    t.integer "repeat_month"
    t.integer "repeat_week"
    t.integer "repeat_day"
    t.integer "repeat_weekday"
    t.datetime "valid_until"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rolcc_feed_category_books", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rolcc_feed_category_dates", id: :serial, force: :cascade do |t|
    t.date "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "year"
    t.integer "month"
    t.string "string"
  end

  create_table "rolcc_feeds", id: :serial, force: :cascade do |t|
    t.string "book"
    t.date "date"
    t.time "time"
    t.text "short_script"
    t.string "long_script"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "link"
    t.string "prayer"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verse_tables", id: :serial, force: :cascade do |t|
    t.string "book"
    t.string "verse"
    t.text "unformatted"
    t.integer "version_id"
  end

  create_table "verses", id: :serial, force: :cascade do |t|
    t.string "book"
    t.string "verse"
    t.text "unformatted"
    t.integer "version_id"
    t.index "lower(unformatted) text_pattern_ops", name: "verses_unformatted_lower"
  end

  create_table "versions", id: :serial, force: :cascade do |t|
    t.string "fullename"
    t.text "copyright"
    t.string "contact_url"
    t.string "name"
    t.string "url"
    t.string "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "featured_infos", "events"
  add_foreign_key "mgmts", "roles"
end
