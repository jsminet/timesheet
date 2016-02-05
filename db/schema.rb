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

ActiveRecord::Schema.define(version: 20160205173040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 60
    t.string   "iso_code_2", limit: 2
    t.string   "iso_code_3", limit: 3
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "countries", ["iso_code_2"], name: "index_countries_on_iso_code_2", unique: true, using: :btree
  add_index "countries", ["iso_code_3"], name: "index_countries_on_iso_code_3", unique: true, using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.string   "code",       limit: 10
    t.string   "full_code",  limit: 15
    t.integer  "country_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "customers", ["country_id"], name: "index_customers_on_country_id", using: :btree
  add_index "customers", ["full_code"], name: "index_customers_on_full_code", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "is_admin",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "customers", "countries"
end
