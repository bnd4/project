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

ActiveRecord::Schema.define(version: 20141220150423) do

  create_table "orders", force: true do |t|
    t.integer  "thead_id"
    t.integer  "tbody_id"
    t.integer  "tsign_id"
    t.text     "template"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tbodies", force: true do |t|
    t.text     "main"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theads", force: true do |t|
    t.text     "head"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tsigns", force: true do |t|
    t.text     "signature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
