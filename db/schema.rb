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

ActiveRecord::Schema.define(version: 20170712174146) do

  create_table "chat_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_messages", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "chatroom_users", force: :cascade do |t|
    t.integer  "chatroom_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["chatroom_id"], name: "index_chatroom_users_on_chatroom_id"
    t.index ["user_id"], name: "index_chatroom_users_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eba_answers", force: :cascade do |t|
    t.integer  "eba_question_id"
    t.integer  "user_id"
    t.text     "answer"
    t.datetime "uploaded_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "eba_questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "classname"
    t.datetime "uploaded_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "gr_fileserver_contents", force: :cascade do |t|
    t.binary   "file_content"
    t.string   "file_name"
    t.string   "file_type"
    t.integer  "file_size"
    t.integer  "file_permission"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "ht_favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ht_routes", force: :cascade do |t|
    t.string   "name"
    t.string   "route_detail"
    t.integer  "chat_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ik_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ik_memos", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "ik_category_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "chatroom_id"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "rh21_languages", force: :cascade do |t|
    t.text     "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rh21_posts", force: :cascade do |t|
    t.text     "timestamp"
    t.text     "title"
    t.text     "content"
    t.integer  "likes"
    t.integer  "dislikes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "rh21_thread_id"
    t.integer  "rh21_status_id"
    t.integer  "rh21_language_id"
  end

  create_table "rh21_roles", force: :cascade do |t|
    t.text     "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rh21_statuses", force: :cascade do |t|
    t.text     "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rh21_threads", force: :cascade do |t|
    t.text     "title"
    t.text     "subject"
    t.text     "timestamp"
    t.text     "content"
    t.integer  "quality"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "language_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "smpl_chats", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.integer  "inbound"
    t.integer  "route_id"
    t.integer  "hour"
    t.integer  "min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "handle"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
