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

ActiveRecord::Schema.define(version: 20160708013919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colours", force: :cascade do |t|
    t.string   "name"
    t.string   "hexcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "colours", ["user_id"], name: "index_colours_on_user_id", using: :btree

  create_table "palette_colours", force: :cascade do |t|
    t.integer  "colour_id"
    t.integer  "palette_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "palette_colours", ["colour_id"], name: "index_palette_colours_on_colour_id", using: :btree
  add_index "palette_colours", ["palette_id"], name: "index_palette_colours_on_palette_id", using: :btree

  create_table "palettes", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "palette_colours", "colours"
  add_foreign_key "palette_colours", "palettes"
end
