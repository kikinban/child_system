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

ActiveRecord::Schema.define(version: 2022_01_30_144720) do

  create_table "administrators", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attempts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "calendars", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "start_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "change_posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.string "person"
    t.text "others"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "change_content"
    t.string "change_time"
    t.string "change_children_name"
    t.string "change_item"
  end

  create_table "class_posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "image_1"
    t.text "image_2"
    t.text "image_3"
    t.text "title"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "daily_records", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "activities"
    t.text "states"
    t.text "information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "note_temperature"
    t.string "note_condition"
    t.string "note_snot"
    t.string "note_cough"
    t.string "note_slight_fever"
    t.string "note_heat"
    t.string "note_diarrhea"
    t.string "note_vomiting"
    t.string "note_anorexia"
    t.string "note_cold"
    t.text "note_condition_text"
    t.string "note_defecation"
    t.string "note_stool_yes"
    t.string "note_stool_number"
    t.string "note_injury"
    t.string "note_morning_snack"
    t.string "note_morning_remaining_contents"
    t.string "note_noon"
    t.string "note_noon_remaining_contents"
    t.string "note_noon_snack"
    t.string "note_noon_snack_remaining_contents"
  end

  create_table "incorporates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.text "content"
    t.text "image_1"
    t.text "image_2"
    t.text "image_3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parent_forms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "children_name"
    t.string "parent_name"
    t.string "content_name"
    t.text "contents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parent_informations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.text "content"
    t.text "file_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parent_tops", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parents_notes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "parent_note_date"
    t.string "temperature"
    t.string "snot"
    t.string "cough"
    t.string "slight_fever"
    t.string "heatm"
    t.string "diarrhea"
    t.string "vomiting"
    t.string "anorexia"
    t.string "cold"
    t.string "condition_text"
    t.string "defecation"
    t.string "stool_yes"
    t.string "stool_number"
    t.string "medicine"
    t.string "medicine_yes"
    t.string "yesterday_appetite"
    t.string "yesterday_dinner"
    t.string "breakfast_appetite"
    t.string "breakfast"
    t.string "states"
    t.string "information"
    t.string "person"
    t.string "person_name"
    t.string "heat"
    t.string "condition"
  end

  create_table "stampings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.timestamp "start_time"
    t.timestamp "end_time"
    t.string "stamping_times"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "stamping_time"
    t.string "stamping_children_name"
  end

end
