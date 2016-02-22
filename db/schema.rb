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

ActiveRecord::Schema.define(version: 20160222155051) do

  create_table "poi_apparel_infos", force: :cascade do |t|
    t.string   "title_name"
    t.text     "description"
    t.string   "image_url"
    t.integer  "price"
    t.integer  "stock"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "poi_grips_infos", force: :cascade do |t|
    t.string   "title_name"
    t.text     "description"
    t.string   "image_url"
    t.string   "color"
    t.integer  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "poi_poi_infos", force: :cascade do |t|
    t.text     "detailed_description"
    t.integer  "product_id"
    t.integer  "poi_info_id"
    t.string   "poi_info_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "poi_poi_infos", ["poi_info_id"], name: "index_poi_poi_infos_on_poi_info_id"
  add_index "poi_poi_infos", ["poi_info_type"], name: "index_poi_poi_infos_on_poi_info_type"
  add_index "poi_poi_infos", ["product_id"], name: "index_poi_poi_infos_on_product_id"

  create_table "poi_product_infos", force: :cascade do |t|
    t.text     "detailed_description"
    t.integer  "product_id"
    t.integer  "poi_info_id"
    t.string   "poi_info_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "poi_product_infos", ["poi_info_id"], name: "index_poi_product_infos_on_poi_info_id"
  add_index "poi_product_infos", ["poi_info_type"], name: "index_poi_product_infos_on_poi_info_type"
  add_index "poi_product_infos", ["product_id"], name: "index_poi_product_infos_on_product_id"

  create_table "poi_racket_infos", force: :cascade do |t|
    t.string   "title_name"
    t.text     "description"
    t.string   "image_url"
    t.string   "shaft"
    t.string   "weight"
    t.string   "length"
    t.integer  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "poi_shuttlecocks_infos", force: :cascade do |t|
    t.string   "title_name"
    t.text     "description"
    t.string   "image_url"
    t.integer  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "poi_string_infos", force: :cascade do |t|
    t.string   "title_name"
    t.text     "description"
    t.string   "image_url"
    t.string   "guage"
    t.string   "length"
    t.string   "color"
    t.integer  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.integer  "price"
    t.string   "category"
    t.string   "subcategory"
    t.integer  "stock"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
