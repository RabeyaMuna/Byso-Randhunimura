# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_21_113551) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "tittle", null: false
    t.string "uuid", default: "ba8ad9da-2e9f-4b69-9629-033ffe497752", null: false
    t.text "event_description"
    t.text "location"
    t.decimal "required_donation_amount"
    t.decimal "total_donation_amount_collected", default: "0.0"
    t.datetime "start_date_of_event"
    t.datetime "last_date_of_submission"
    t.integer "status"
    t.string "type"
    t.string "created_by", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by"], name: "index_events_on_created_by"
    t.index ["status"], name: "index_events_on_status"
    t.index ["tittle"], name: "index_events_on_tittle"
    t.index ["type"], name: "index_events_on_type"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "role_name", null: false
    t.integer "uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_name"], name: "index_roles_on_role_name"
  end

  create_table "user_pays_for_events", force: :cascade do |t|
    t.decimal "amount", default: "0.0", null: false
    t.bigint "user_id"
    t.bigint "event_id"
    t.integer "payment_method", null: false
    t.decimal "donated_amount", default: "0.0", null: false
    t.uuid "payment_id"
    t.datetime "paid_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_user_pays_for_events_on_event_id"
    t.index ["user_id"], name: "index_user_pays_for_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "phone_number", null: false
    t.string "email", null: false
    t.string "uuid", default: "619844ab-7835-4268-be85-2320b63fdf5b", null: false
    t.integer "gender"
    t.integer "status"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["full_name"], name: "index_users_on_full_name"
    t.index ["gender"], name: "index_users_on_gender"
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["status"], name: "index_users_on_status"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "user_pays_for_events", "events"
  add_foreign_key "user_pays_for_events", "users"
  add_foreign_key "users", "roles"
end
