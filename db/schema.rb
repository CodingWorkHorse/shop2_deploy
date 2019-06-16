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

ActiveRecord::Schema.define(version: 20190421230935) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "title"
    t.string "user"
    t.string "access_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.integer "order_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "user"
    t.string "class"
    t.string "collection"
    t.string "organization"
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user"
    t.string "email"
    t.string "status"
    t.string "address"
    t.string "town"
    t.string "zipcode"
    t.decimal "lattitude"
    t.decimal "longitude"
    t.integer "route"
    t.integer "stop_on_route"
    t.decimal "total"
    t.string "order_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_url"
    t.string "category"
    t.decimal "price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sub_category"
  end

  create_table "routes", force: :cascade do |t|
    t.string "driver"
    t.string "vehicle"
    t.decimal "cargo_capacity"
    t.string "departure_address"
    t.string "departure_lattitude"
    t.string "departure_longitude"
    t.string "stop_1_address"
    t.string "stop_2_address"
    t.string "stop_3_address"
    t.string "stop_4_address"
    t.string "stop_5_address"
    t.string "stop_6_address"
    t.string "return_address"
    t.string "return_lattitude"
    t.string "return_longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.string "address"
    t.string "town"
    t.integer "zipcode"
    t.decimal "lattitude"
    t.decimal "longitude"
    t.integer "route"
    t.integer "stop_on_route"
    t.decimal "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
