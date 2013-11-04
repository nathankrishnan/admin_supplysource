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

ActiveRecord::Schema.define(version: 20131031065756) do

  create_table "flags", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "product1_id"
    t.integer  "product2_id"
    t.integer  "product3_id"
    t.integer  "product4_id"
    t.integer  "product5_id"
    t.integer  "product6_id"
    t.integer  "product7_id"
    t.integer  "product8_id"
    t.integer  "product9_id"
    t.integer  "product10_id"
    t.integer  "product11_id"
    t.integer  "product12_id"
    t.integer  "product13_id"
    t.integer  "product14_id"
    t.integer  "product15_id"
    t.integer  "product16_id"
    t.integer  "product17_id"
    t.integer  "product18_id"
    t.integer  "product19_id"
    t.integer  "product20_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meats", force: true do |t|
    t.string   "name"
    t.integer  "supplier_id"
    t.string   "thumbnail"
    t.boolean  "ab_free"
    t.boolean  "hormone_free"
    t.boolean  "wild_caught"
    t.boolean  "farm_grown"
    t.boolean  "artificial_color"
    t.text     "description"
    t.text     "growth_conditions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "scancount"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.string   "category"
    t.integer  "track1_scancount"
    t.integer  "track2_scancount"
    t.integer  "track3_scancount"
    t.boolean  "packaged"
    t.integer  "calories"
    t.integer  "protein"
    t.integer  "carbs"
    t.boolean  "gluten"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.integer  "calories"
    t.integer  "protein"
    t.integer  "carbs"
    t.integer  "ingredient1_id"
    t.integer  "ingredient2_id"
    t.integer  "ingredient3_id"
    t.integer  "ingredient4_id"
    t.integer  "ingredient5_id"
    t.integer  "ingredient6_id"
    t.integer  "ingredient7_id"
    t.integer  "ingredient8_id"
    t.integer  "ingredient9_id"
    t.integer  "ingredient10_id"
    t.integer  "ingredient11_id"
    t.integer  "ingredient12_id"
    t.integer  "ingredient13_id"
    t.integer  "ingredient14_id"
    t.integer  "ingredient15_id"
    t.integer  "ingredient16_id"
    t.integer  "ingredient17_id"
    t.integer  "ingredient18_id"
    t.integer  "ingredient19_id"
    t.integer  "ingredient20_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoppers", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.integer  "track"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "gender"
    t.integer  "flag_1"
    t.integer  "flag_2"
    t.integer  "flag_3"
    t.integer  "flag_4"
    t.integer  "flag_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "calorie_max"
    t.integer  "calorie_min"
    t.integer  "carb_max"
    t.integer  "carb_min"
    t.integer  "fat_max"
    t.integer  "fat_min"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
