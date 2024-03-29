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

ActiveRecord::Schema.define(version: 20140513003016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "events", force: true do |t|
    t.integer  "team_id"
    t.string   "locale"
    t.text     "description"
    t.string   "opponent"
    t.datetime "date"
  end

  add_index "events", ["team_id"], name: "index_events_on_team_id", using: :btree

  create_table "modalities", force: true do |t|
    t.string  "title"
    t.text    "description"
    t.integer "position"
  end

  create_table "players", force: true do |t|
    t.integer  "team_id"
    t.integer  "role_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.integer  "position"
    t.string   "player_image_file_name"
    t.string   "player_image_content_type"
    t.integer  "player_image_file_size"
    t.datetime "player_image_updated_at"
    t.integer  "number"
    t.date     "birth"
    t.string   "hometown"
    t.text     "bio"
  end

  add_index "players", ["role_id"], name: "index_players_on_role_id", using: :btree
  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "roles", force: true do |t|
    t.integer "modality_id"
    t.string  "title"
    t.boolean "staff"
    t.integer "position"
  end

  add_index "roles", ["modality_id"], name: "index_roles_on_modality_id", using: :btree

  create_table "sponsor_categories", force: true do |t|
    t.string  "title"
    t.integer "grandeur"
    t.integer "position"
  end

  create_table "sponsors", force: true do |t|
    t.string   "title"
    t.string   "sponsor_image_file_name"
    t.string   "sponsor_image_content_type"
    t.integer  "sponsor_image_file_size"
    t.datetime "sponsor_image_updated_at"
    t.text     "description"
    t.integer  "sponsor_category_id"
    t.integer  "position"
    t.string   "link"
  end

  add_index "sponsors", ["sponsor_category_id"], name: "index_sponsors_on_sponsor_category_id", using: :btree

  create_table "teams", force: true do |t|
    t.integer  "modality_id"
    t.string   "title"
    t.text     "description"
    t.integer  "position"
    t.string   "team_image_file_name"
    t.string   "team_image_content_type"
    t.integer  "team_image_file_size"
    t.datetime "team_image_updated_at"
  end

  add_index "teams", ["modality_id"], name: "index_teams_on_modality_id", using: :btree

end
