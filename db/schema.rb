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

ActiveRecord::Schema[7.0].define(version: 2023_06_26_105016) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assos", force: :cascade do |t|
    t.string "nom"
    t.string "category"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "missions", force: :cascade do |t|
    t.date "date_création"
    t.string "nom"
    t.time "temps"
    t.string "description"
    t.string "localisation"
    t.date "date"
    t.string "photo_url"
    t.string "category"
    t.bigint "asso_id", null: false
    t.integer "participants_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asso_id"], name: "index_missions_on_asso_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "mission_id", null: false
    t.date "date_départ"
    t.date "date_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mission_id"], name: "index_reservations_on_mission_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "photo_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "missions", "assos"
  add_foreign_key "reservations", "missions"
  add_foreign_key "reservations", "users"
end
