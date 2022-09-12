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

ActiveRecord::Schema[7.0].define(version: 2022_09_08_073013) do
  create_table "food_trucks", force: :cascade do |t|
    t.string "name"
    t.string "food_type"
    t.string "address"
    t.string "state"
    t.integer "zipcode"
    t.string "seating"
    t.string "business_hours"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foodie_owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "password_digest"
    t.integer "food_truck_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_truck_id"], name: "index_foodie_owners_on_food_truck_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "picture"
    t.integer "food_truck_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_truck_id"], name: "index_menus_on_food_truck_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "star_rating"
    t.text "discription"
    t.integer "user_id", null: false
    t.integer "food_truck_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_truck_id"], name: "index_ratings_on_food_truck_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "phone_number"
    t.string "profile_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "foodie_owners", "food_trucks"
  add_foreign_key "menus", "food_trucks"
  add_foreign_key "ratings", "food_trucks"
  add_foreign_key "ratings", "users"
end
