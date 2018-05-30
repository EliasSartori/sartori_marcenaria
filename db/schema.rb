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

ActiveRecord::Schema.define(version: 20180529231908) do

  create_table "administrators", force: :cascade do |t|
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
    t.string   "name"
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true

  create_table "adressses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "city_id"
    t.string   "street"
    t.string   "neighborhood"
    t.integer  "number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "adressses", ["city_id"], name: "index_adressses_on_city_id"
  add_index "adressses", ["user_id"], name: "index_adressses_on_user_id"

  create_table "cities", force: :cascade do |t|
    t.integer  "state_id"
    t.string   "description"
    t.integer  "cep"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "amount"
    t.boolean  "delivered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.text     "description"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products_orders", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "unitary_value"
    t.decimal  "total_value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "products_orders", ["order_id"], name: "index_products_orders_on_order_id"
  add_index "products_orders", ["product_id"], name: "index_products_orders_on_product_id"

  create_table "states", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
