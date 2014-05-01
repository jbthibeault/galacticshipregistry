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

ActiveRecord::Schema.define(:version => 20140427231752) do

  create_table "captains", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.integer  "planet_id"
    t.string   "email"
    t.decimal  "wallet"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "captains", ["email"], :name => "index_captains_on_email", :unique => true
  add_index "captains", ["remember_token"], :name => "index_captains_on_remember_token"

  create_table "engines", :force => true do |t|
    t.string  "name"
    t.integer "model_num"
    t.string  "manufacturer"
    t.decimal "tax"
  end

  create_table "planets", :force => true do |t|
    t.string  "name"
    t.string  "system"
    t.decimal "tax_rate"
  end

  create_table "ships", :force => true do |t|
    t.string  "name"
    t.string  "classification"
    t.integer "weight"
    t.integer "num_engines"
    t.integer "engine_id"
    t.integer "captain_id"
    t.integer "planet_id"
  end

end
