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

ActiveRecord::Schema.define(version: 20170213162931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "hours"
    t.string   "address"
    t.string   "city"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "cuisine_id"
    t.integer  "restriction_id"
    t.index ["cuisine_id"], name: "index_restaurants_on_cuisine_id", using: :btree
    t.index ["restriction_id"], name: "index_restaurants_on_restriction_id", using: :btree
  end

  create_table "restaurants_cuisines", force: :cascade do |t|
    t.integer "cuisine_id"
    t.integer "restaurant_id"
    t.index ["cuisine_id"], name: "index_restaurants_cuisines_on_cuisine_id", using: :btree
    t.index ["restaurant_id"], name: "index_restaurants_cuisines_on_restaurant_id", using: :btree
  end

  create_table "restaurants_restrictions", force: :cascade do |t|
    t.integer "restriction_id"
    t.integer "restaurant_id"
    t.index ["restaurant_id"], name: "index_restaurants_restrictions_on_restaurant_id", using: :btree
    t.index ["restriction_id"], name: "index_restaurants_restrictions_on_restriction_id", using: :btree
  end

  create_table "restrictions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "reviewer"
    t.boolean  "recommend"
    t.string   "explanation"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree
  end

  add_foreign_key "restaurants", "cuisines"
  add_foreign_key "restaurants", "restrictions"
  add_foreign_key "restaurants_cuisines", "cuisines"
  add_foreign_key "restaurants_cuisines", "restaurants"
  add_foreign_key "restaurants_restrictions", "restaurants"
  add_foreign_key "restaurants_restrictions", "restrictions"
  add_foreign_key "reviews", "restaurants"
end
