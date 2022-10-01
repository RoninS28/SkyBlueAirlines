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

ActiveRecord::Schema.define(version: 2022_09_30_182021) do

  create_table "admins", force: :cascade do |t|
    t.string "admin_id"
    t.string "admin_username"
    t.string "admin_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admins_on_admin_id", unique: true
  end

  create_table "flights", force: :cascade do |t|
    t.string "name"
    t.string "flight_id"
    t.string "manufacturer"
    t.string "originCity"
    t.string "destinationCity"
    t.string "status"
    t.string "flight_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capacity"
    t.decimal "flight_cost"
    t.index ["flight_id"], name: "index_flights_on_flight_id", unique: true
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "no_of_passengers"
    t.string "confirmation_number"
    t.string "amenities"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "flight_id"
    t.integer "user_id"
    t.string "ticket_class"
    t.index ["confirmation_number"], name: "index_reservations_on_confirmation_number", unique: true
    t.index ["flight_id"], name: "index_reservations_on_flight_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_id"
    t.string "credit_card_number"
    t.string "address"
    t.integer "mobile"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "orig"
    t.string "dest"
    t.index ["user_id"], name: "index_users_on_user_id", unique: true
  end

end
