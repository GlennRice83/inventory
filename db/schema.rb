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

ActiveRecord::Schema.define(version: 20140118000245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "containers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.string   "sku"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "shelf_life"
  end

  create_table "items", force: true do |t|
    t.integer  "food_id"
    t.float    "value"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "container_id"
    t.integer  "containerlike_id"
    t.string   "containerlike_type"
    t.boolean  "combinable"
    t.datetime "expiration_date"
    t.integer  "state_cd"
  end

  create_table "meal_plan_meals", force: true do |t|
    t.datetime "due_date"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "meal_plan_id"
    t.integer  "recipe_id"
  end

  create_table "meal_plans", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "price_cents"
    t.integer  "store_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit"
    t.float    "value"
  end

  create_table "recipe_ingredients", force: true do |t|
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "preperation"
    t.string   "unit"
    t.float    "value"
    t.integer  "food_id"
  end

  create_table "recipes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "shopping_list_list_items", force: true do |t|
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shopping_list_id"
  end

  create_table "shopping_lists", force: true do |t|
    t.string   "name"
    t.string   "store"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_items", force: true do |t|
    t.integer  "food_id"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
