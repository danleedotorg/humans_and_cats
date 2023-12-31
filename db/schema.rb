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

ActiveRecord::Schema[7.1].define(version: 2023_12_23_034301) do
  create_table "cats", force: :cascade do |t|
    t.text "name"
    t.integer "age"
    t.string "breed"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cats_humen", id: false, force: :cascade do |t|
    t.integer "human_id", null: false
    t.integer "cat_id", null: false
    t.index ["cat_id", "human_id"], name: "index_cats_humen_on_cat_id_and_human_id"
    t.index ["human_id", "cat_id"], name: "index_cats_humen_on_human_id_and_cat_id"
  end

  create_table "humen", force: :cascade do |t|
    t.text "name"
    t.integer "age"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
