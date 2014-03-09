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

ActiveRecord::Schema.define(:version => 20140309025708) do

  create_table "favorites", :force => true do |t|
    t.integer  "user_id",     :null => false
    t.integer  "team_id",     :null => false
    t.integer  "curr_points", :null => false
    t.integer  "last_points", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teams", :force => true do |t|
    t.integer  "team_id",    :null => false
    t.string   "nickname",   :null => false
    t.string   "abrev",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "location"
  end

  create_table "users", :force => true do |t|
    t.integer  "user_id"
    t.string   "username",     :null => false
    t.integer  "total_points", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
