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

ActiveRecord::Schema.define(version: 20141121173620) do

  create_table "bcomments", force: true do |t|
    t.integer  "book_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bcomments", ["book_id"], name: "index_bcomments_on_book_id"

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "date"
    t.string   "content"
    t.string   "writer"
    t.string   "publisher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "book_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["book_id"], name: "index_comments_on_book_id"

  create_table "fcomments", force: true do |t|
    t.integer  "film_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fcomments", ["film_id"], name: "index_fcomments_on_film_id"

  create_table "films", force: true do |t|
    t.string   "title"
    t.string   "date"
    t.string   "content"
    t.string   "director"
    t.string   "character"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mcomments", force: true do |t|
    t.integer  "music_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mcomments", ["music_id"], name: "index_mcomments_on_music_id"

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "musics", force: true do |t|
    t.string   "title"
    t.string   "date"
    t.string   "content"
    t.string   "performer"
    t.string   "publisher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
