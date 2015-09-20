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

ActiveRecord::Schema.define(version: 20150920144213) do

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "country_params", force: :cascade do |t|
    t.float    "diesel_price"
    t.float    "electricity_price"
    t.float    "one_time_subsidy"
    t.float    "annual_subsidy"
    t.integer  "country_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "country_params", ["country_id"], name: "index_country_params_on_country_id"

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.integer  "vendor_id"
    t.float    "cost"
    t.float    "weight"
    t.float    "fal"
    t.integer  "power_kw"
    t.integer  "power_hp"
    t.integer  "battery"
    t.float    "drive_range"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vehicles", ["vendor_id"], name: "index_vehicles_on_vendor_id"

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vendors", ["country_id"], name: "index_vendors_on_country_id"

end
