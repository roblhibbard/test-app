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

ActiveRecord::Schema.define(version: 20160401050130) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "business_name"
    t.integer "phone_number"
    t.integer "mobile_number"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.integer "zip_code"
    t.integer "email"
  end

  create_table "priority_lists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.boolean  "enabled"
    t.integer  "list_position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "subject",                          null: false
    t.text     "description",                      null: false
    t.string   "ticket_priority"
    t.boolean  "closed"
    t.string   "closed_by"
    t.datetime "closed_date"
    t.text     "resolution"
    t.integer  "user_id",                          null: false
    t.integer  "assigned_to_id"
    t.text     "assigned_to_username"
    t.integer  "priority_list_id"
    t.integer  "status_id",            default: 1, null: false
    t.string   "created_by"
    t.string   "edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "service"
    t.integer  "customer_id"
  end

  add_index "tickets", ["customer_id"], name: "index_tickets_on_customer_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
  end

end
