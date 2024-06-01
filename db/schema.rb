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

ActiveRecord::Schema[7.0].define(version: 2024_06_01_021524) do
  create_table "emotions", charset: "utf8", force: :cascade do |t|
    t.string "emotion_text"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_emotions_on_user_id"
  end

  create_table "friends", charset: "utf8", force: :cascade do |t|
    t.string "friends_name"
    t.string "contact"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_friends_on_user_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "strengths"
    t.string "hobbies"
    t.string "skills"
    t.integer "funeral_wishes"
    t.integer "funeral_form"
    t.integer "posthumous_name_budget"
    t.integer "funeral_home_budget"
    t.integer "reword_budget"
    t.integer "others_budget"
    t.string "chief_mourner"
    t.string "kinship"
    t.integer "ashes"
    t.integer "posthumous_name"
    t.integer "belongings"
    t.string "legacy"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "emotions", "users"
  add_foreign_key "friends", "users"
end
