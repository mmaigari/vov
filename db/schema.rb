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

ActiveRecord::Schema.define(version: 2021_09_04_173151) do

  create_table "chairmen", force: :cascade do |t|
    t.string "lga"
    t.string "ward"
    t.string "pollingunit"
    t.integer "total_votes"
    t.integer "valid_votes"
    t.integer "invalid_votes"
    t.integer "apc"
    t.integer "apga"
    t.integer "apm"
    t.integer "nnpp"
    t.integer "pdp"
    t.integer "prp"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sdp"
    t.integer "app"
    t.integer "lp"
    t.integer "bp"
    t.index ["user_id"], name: "index_chairmen_on_user_id"
  end

  create_table "councillors", force: :cascade do |t|
    t.string "lga"
    t.string "ward"
    t.string "pollingunit"
    t.integer "total_votes"
    t.integer "valid_votes"
    t.integer "invalid_votes"
    t.integer "apc"
    t.integer "apga"
    t.integer "apm"
    t.integer "nnpp"
    t.integer "pdp"
    t.integer "prp"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lp"
    t.integer "sdp"
    t.integer "app"
    t.integer "bp"
    t.index ["user_id"], name: "index_councillors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
