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

ActiveRecord::Schema.define(version: 20150206152128) do

  create_table "sessions", force: true do |t|
    t.string   "cookie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "session_id"
  end

  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true
  add_index "users", ["session_id"], name: "index_users_on_session_id"

end
