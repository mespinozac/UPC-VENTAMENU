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

ActiveRecord::Schema.define(version: 20150604222036) do

  create_table "cartacabs", force: true do |t|
    t.text     "descripcion"
    t.date     "fecha"
    t.string   "estado"
    t.float    "precio",      limit: 24
    t.integer  "local_id"
    t.integer  "tipomenu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cartacabs", ["local_id"], name: "index_cartacabs_on_local_id", using: :btree
  add_index "cartacabs", ["tipomenu_id"], name: "index_cartacabs_on_tipomenu_id", using: :btree

  create_table "cartadetalles", force: true do |t|
    t.string   "estado"
    t.integer  "cartacab_id"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cartadetalles", ["cartacab_id"], name: "index_cartadetalles_on_cartacab_id", using: :btree
  add_index "cartadetalles", ["menu_id"], name: "index_cartadetalles_on_menu_id", using: :btree

  create_table "ciudads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "celular"
    t.string   "correo"
    t.string   "empresa"
    t.string   "direccionenvio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", force: true do |t|
    t.string   "nombre"
    t.text     "direccion"
    t.string   "telefono"
    t.string   "celular"
    t.integer  "ciudad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locals", ["ciudad_id"], name: "index_locals_on_ciudad_id", using: :btree

  create_table "menus", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "tipoplato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["tipoplato_id"], name: "index_menus_on_tipoplato_id", using: :btree

  create_table "pedidodetalles", force: true do |t|
    t.string   "estado"
    t.integer  "pedido_id"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidodetalles", ["menu_id"], name: "index_pedidodetalles_on_menu_id", using: :btree
  add_index "pedidodetalles", ["pedido_id"], name: "index_pedidodetalles_on_pedido_id", using: :btree

  create_table "pedidos", force: true do |t|
    t.date     "fecha"
    t.string   "horapedido"
    t.string   "horaentrega"
    t.string   "estado"
    t.float    "montopedido", limit: 24
    t.integer  "cartacab_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["cartacab_id"], name: "index_pedidos_on_cartacab_id", using: :btree

  create_table "tipomenus", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoplatos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
