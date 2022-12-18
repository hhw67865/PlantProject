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

ActiveRecord::Schema[7.0].define(version: 2022_12_18_060622) do
  create_table "bugs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "prevention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "likes"
    t.integer "post_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "prevention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "months", force: :cascade do |t|
    t.string "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "picture_url"
    t.integer "post_id"
    t.integer "plant_id"
    t.integer "bug_id"
    t.integer "disease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bug_id"], name: "index_pictures_on_bug_id"
    t.index ["disease_id"], name: "index_pictures_on_disease_id"
    t.index ["plant_id"], name: "index_pictures_on_plant_id"
    t.index ["post_id"], name: "index_pictures_on_post_id"
  end

  create_table "plant_bugs", force: :cascade do |t|
    t.integer "plant_id", null: false
    t.integer "bug_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bug_id"], name: "index_plant_bugs_on_bug_id"
    t.index ["plant_id"], name: "index_plant_bugs_on_plant_id"
  end

  create_table "plant_diseases", force: :cascade do |t|
    t.integer "plant_id", null: false
    t.integer "disease_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_plant_diseases_on_disease_id"
    t.index ["plant_id"], name: "index_plant_diseases_on_plant_id"
  end

  create_table "plant_location_months", force: :cascade do |t|
    t.integer "plant_id", null: false
    t.integer "location_id", null: false
    t.integer "month_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_plant_location_months_on_location_id"
    t.index ["month_id"], name: "index_plant_location_months_on_month_id"
    t.index ["plant_id"], name: "index_plant_location_months_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.text "symptoms"
    t.text "soil_mix"
    t.text "harvest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "likes"
    t.integer "user_id", null: false
    t.integer "plant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_posts_on_plant_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.string "reply"
    t.integer "likes"
    t.integer "comment_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "profile_picture"
    t.text "description"
    t.integer "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "pictures", "bugs"
  add_foreign_key "pictures", "diseases"
  add_foreign_key "pictures", "plants"
  add_foreign_key "pictures", "posts"
  add_foreign_key "plant_bugs", "bugs"
  add_foreign_key "plant_bugs", "plants"
  add_foreign_key "plant_diseases", "diseases"
  add_foreign_key "plant_diseases", "plants"
  add_foreign_key "plant_location_months", "locations"
  add_foreign_key "plant_location_months", "months"
  add_foreign_key "plant_location_months", "plants"
  add_foreign_key "posts", "plants"
  add_foreign_key "posts", "users"
  add_foreign_key "replies", "comments"
  add_foreign_key "replies", "users"
  add_foreign_key "users", "locations"
end
