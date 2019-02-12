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

ActiveRecord::Schema.define(version: 2019_02_12_094829) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "booking_payments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.integer "currency_id"
    t.float "price"
    t.integer "status"
    t.date "expiration"
    t.index ["currency_id"], name: "index_booking_payments_on_currency_id"
    t.index ["studio_id"], name: "index_booking_payments_on_studio_id"
    t.index ["user_id"], name: "index_booking_payments_on_user_id"
  end

  create_table "booking_requests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.date "book_from"
    t.date "book_to"
    t.integer "booking_payments_id"
    t.index ["booking_payments_id"], name: "index_booking_requests_on_booking_payments_id"
    t.index ["studio_id"], name: "index_booking_requests_on_studio_id"
    t.index ["user_id"], name: "index_booking_requests_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.date "book_from"
    t.date "book_to"
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "currency_name"
  end

  create_table "m_equipments_to_apartments", force: :cascade do |t|
    t.integer "studios_id"
    t.integer "musical_equipment_id"
    t.index ["musical_equipment_id"], name: "index_m_equipments_to_apartments_on_musical_equipment_id"
    t.index ["studios_id"], name: "index_m_equipments_to_apartments_on_studios_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "from_user_id"
    t.integer "to_user_id"
    t.integer "studio_id"
    t.text "messages"
    t.index ["studio_id"], name: "index_messages_on_studio_id"
  end

  create_table "musical_equipments", force: :cascade do |t|
    t.string "name"
    t.text "short_description"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "studio_id"
    t.integer "user_id"
    t.text "review_message"
    t.float "rate"
    t.index ["studio_id"], name: "index_reviews_on_studio_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "schedule_for_studios", force: :cascade do |t|
    t.integer "studio_id"
    t.integer "day_of_week"
    t.time "from"
    t.time "to"
    t.index ["studio_id"], name: "index_schedule_for_studios_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.integer "user_id"
    t.string "caption"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
    t.float "base_price_per_hour"
    t.boolean "verified", default: false
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "phone_number"
    t.text "bio"
    t.integer "currencies_id"
    t.string "insta_url"
    t.string "facebook_url"
    t.string "web_site_url"
    t.index ["currencies_id"], name: "index_user_profiles_on_currencies_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
