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

ActiveRecord::Schema.define(version: 20150611210614) do

  create_table "admins", force: true do |t|
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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "celphone"
    t.string   "mail"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "celphone"
    t.string   "mail"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "type_food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "locals", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "celphone"
    t.string   "mail"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locals", ["city_id"], name: "index_locals_on_city_id", using: :btree

  create_table "menu_details", force: true do |t|
    t.string   "status"
    t.integer  "menu_id"
    t.integer  "food_id"
    t.integer  "type_menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menu_details", ["food_id"], name: "index_menu_details_on_food_id", using: :btree
  add_index "menu_details", ["menu_id"], name: "index_menu_details_on_menu_id", using: :btree
  add_index "menu_details", ["type_menu_id"], name: "index_menu_details_on_type_menu_id", using: :btree

  create_table "menus", force: true do |t|
    t.string   "name"
    t.date     "dateMenu"
    t.string   "status"
    t.float    "price",      limit: 24
    t.integer  "local_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["local_id"], name: "index_menus_on_local_id", using: :btree

  create_table "orders", force: true do |t|
    t.date     "dateOrder"
    t.string   "status"
    t.float    "price",       limit: 24
    t.integer  "customer_id"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["menu_id"], name: "index_orders_on_menu_id", using: :btree

  create_table "type_foods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_menus", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
