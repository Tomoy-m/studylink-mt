# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_12_12_045826) do

  create_table "calendars", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "start_time"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "musics", force: :cascade do |t|
    t.string "file"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recodes", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.date "date"
    t.integer "user_id"
    t.time "start_time"
    t.time "finish_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.string "title11"
    t.string "title12"
    t.string "title13"
    t.string "title14"
    t.string "title15"
    t.string "title16"
    t.string "title21"
    t.string "title22"
    t.string "title23"
    t.string "title24"
    t.string "title25"
    t.string "title26"
    t.string "title31"
    t.string "title32"
    t.string "title33"
    t.string "title34"
    t.string "title35"
    t.string "title36"
    t.string "title41"
    t.string "title42"
    t.string "title43"
    t.string "title44"
    t.string "title45"
    t.string "title46"
    t.string "title51"
    t.string "title52"
    t.string "title53"
    t.string "title54"
    t.string "title55"
    t.string "title56"
    t.string "title61"
    t.string "title62"
    t.string "title63"
    t.string "title64"
    t.string "title65"
    t.string "title66"
    t.time "start_time1"
    t.time "start_time2"
    t.time "start_time3"
    t.time "start_time4"
    t.time "start_time5"
    t.time "start_time6"
    t.time "finish_time1"
    t.time "finish_time2"
    t.time "finish_time3"
    t.time "finish_time4"
    t.time "finish_time5"
    t.time "finish_time6"
    t.string "classroom11"
    t.string "classroom12"
    t.string "classroom13"
    t.string "classroom14"
    t.string "classroom15"
    t.string "classroom16"
    t.string "classroom21"
    t.string "classroom22"
    t.string "classroom23"
    t.string "classroom24"
    t.string "classroom25"
    t.string "classroom26"
    t.string "classroom31"
    t.string "classroom32"
    t.string "classroom33"
    t.string "classroom34"
    t.string "classroom35"
    t.string "classroom36"
    t.string "classroom41"
    t.string "classroom42"
    t.string "classroom43"
    t.string "classroom44"
    t.string "classroom45"
    t.string "classroom46"
    t.string "classroom51"
    t.string "classroom52"
    t.string "classroom53"
    t.string "classroom54"
    t.string "classroom55"
    t.string "classroom56"
    t.string "classroom61"
    t.string "classroom62"
    t.string "classroom63"
    t.string "classroom64"
    t.string "classroom65"
    t.string "classroom66"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "todopages", force: :cascade do |t|
    t.text "text"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "avatar"
    t.integer "gender"
    t.integer "age"
    t.string "address"
    t.text "self_introduction"
    t.string "backimage"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
