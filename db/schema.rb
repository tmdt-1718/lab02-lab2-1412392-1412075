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

ActiveRecord::Schema.define(version: 20171025145423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendtables", force: :cascade do |t|
    t.integer "id_user"
    t.integer "id_friend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "m_id"
    t.integer "m_userown"
    t.integer "m_usersend"
    t.string "m_content"
    t.boolean "m_status"
    t.datetime "m_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_name"
    t.string "user_email"
    t.string "user_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
