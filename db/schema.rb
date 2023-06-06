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

ActiveRecord::Schema[7.0].define(version: 2023_06_05_031426) do
  create_table "deliverers", force: :cascade do |t|
    t.string "user_name"
    t.integer "regestration_vehicle"
    t.integer "phone"
    t.string "address"
    t.string "email"
  end

  create_table "foods", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.string "food_name"
    t.string "food_category"
    t.float "food_price"
    t.string "food_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_foods_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "restaurant_id", null: false
    t.integer "deliverer_id", null: false
    t.integer "food_id", null: false
    t.boolean "status"
    t.float "subtotal"
    t.integer "quantity"
    t.date "order_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deliverer_id"], name: "index_orders_on_deliverer_id"
    t.index ["food_id"], name: "index_orders_on_food_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "user_name"
    t.integer "phone"
    t.string "address"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.integer "phone"
    t.string "address"
    t.string "email"
  end

  add_foreign_key "foods", "restaurants"
  add_foreign_key "orders", "deliverers"
  add_foreign_key "orders", "foods"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "users"
end
