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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20171228021342) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "content"
=======
ActiveRecord::Schema.define(version: 20171227071047) do

  create_table "mobies", force: :cascade do |t|
    t.string   "title"
    t.string   "poster"
    t.string   "genre"
    t.string   "nation"
    t.string   "director"
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "poster"
    t.string   "genre"
    t.string   "nation"
    t.string   "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.string   "image"
=======
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
<<<<<<< HEAD
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "role",                   default: "user", null: false
    t.string   "nickname",               default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
=======
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "is_admin?",              default: false, null: false
    t.string   "nickname",               default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
<<<<<<< HEAD
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
=======
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
