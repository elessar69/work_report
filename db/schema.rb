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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130429193722) do

  create_table "clientes", :force => true do |t|
    t.string   "nombre_cliente"
    t.string   "direccion_servicio"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "jornadas", :force => true do |t|
    t.integer  "horas"
    t.string   "incidencia"
    t.text     "observaciones"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "usuario_id"
    t.integer  "cliente_id"
    t.string   "pilar"
    t.date     "fecha"
  end

  add_index "jornadas", ["cliente_id"], :name => "index_jornadas_on_cliente_id"
  add_index "jornadas", ["usuario_id"], :name => "index_jornadas_on_usuario_id"

  create_table "usuarios", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "numero_empleado"
    t.string   "dni"
    t.boolean  "derechos"
    t.string   "unidad"
    t.string   "gestor"
  end

end
