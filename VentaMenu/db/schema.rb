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

<<<<<<< HEAD
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150602014833) do

  create_table "carta", force: true do |t|
    t.text     "descripcion"
    t.date     "fecha"
    t.string   "estado"
    t.float    "precio",      limit: 24
    t.integer  "local_id"
    t.integer  "tipomenu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carta", ["local_id"], name: "index_carta_on_local_id", using: :btree
  add_index "carta", ["tipomenu_id"], name: "index_carta_on_tipomenu_id", using: :btree

  create_table "cartadetalles", force: true do |t|
    t.string   "estado"
    t.integer  "carta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cartadetalles", ["carta_id"], name: "index_cartadetalles_on_carta_id", using: :btree
=======
<<<<<<< HEAD
>>>>>>> 8d25c8fff6b0d763f5244a337536372337793df4
ActiveRecord::Schema.define(version: 20150602012341) do

  create_table "clientes", force: true do |t|
    t.string   "dni"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "celular"
    t.string   "correo"
    t.string   "empresa"
    t.string   "direccionEnvio"
<<<<<<< HEAD
=======
=======
ActiveRecord::Schema.define(version: 20150602012507) do
>>>>>>> 60cbf9b6acd070fafb7d1385d24073e4632799b5

  create_table "ciudads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idmenus", force: true do |t|
    t.string   "name"
    t.integer  "tipomenus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "idmenus", ["tipomenus_id"], name: "index_idmenus_on_tipomenus_id", using: :btree

  create_table "locals", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipomenus", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoplatos", force: true do |t|
    t.string   "nombre"
>>>>>>> b3867e63d3ac905b512933f79cc485c424410d63
>>>>>>> 8d25c8fff6b0d763f5244a337536372337793df4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
