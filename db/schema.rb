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

ActiveRecord::Schema.define(version: 2018_11_21_080654) do

  create_table "level_progressions", force: :cascade do |t|
    t.integer "site_id"
    t.integer "student_id"
    t.integer "level_id"
    t.integer "teacher_id"
    t.date "date_achieved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_level_progressions_on_level_id"
    t.index ["site_id"], name: "index_level_progressions_on_site_id"
    t.index ["student_id"], name: "index_level_progressions_on_student_id"
    t.index ["teacher_id"], name: "index_level_progressions_on_teacher_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links_lesson_weeklies", force: :cascade do |t|
    t.string "StuSurname"
    t.string "StuGivenNames"
    t.string "StuId"
    t.string "LessonDay"
    t.string "LessonTime"
    t.string "LessonLevel"
    t.string "Area"
    t.string "TeachSurname"
    t.string "TeachGivenNames"
    t.string "StuBookStartDate"
    t.string "RPSurname"
    t.string "RPGivenNames"
    t.string "RPId"
    t.string "RPAddress"
    t.string "RPSuburb"
    t.string "RPPostCode"
    t.string "RPHomePhone"
    t.string "RPWorkPhone"
    t.string "RPPhone"
    t.string "RPEmail"
    t.string "RPBookingBalance"
    t.string "RPBookingFree"
    t.string "FamilyPaymentType"
    t.string "SpecialDiscount"
    t.string "RP"
    t.string "StuGender"
    t.string "StuDateOfBirth"
    t.string "StuAge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string "title"
    t.string "links_reference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_progressions", force: :cascade do |t|
    t.integer "site_id"
    t.integer "student_id"
    t.integer "skill_id"
    t.integer "teacher_id"
    t.date "date_achieved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_skill_progressions_on_site_id"
    t.index ["skill_id"], name: "index_skill_progressions_on_skill_id"
    t.index ["student_id"], name: "index_skill_progressions_on_student_id"
    t.index ["teacher_id"], name: "index_skill_progressions_on_teacher_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.integer "level_id"
    t.integer "rank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_skills_on_level_id"
  end

  create_table "student_levels", force: :cascade do |t|
    t.string "links_reference_id"
    t.string "class_type_id"
    t.string "date_attained"
    t.string "date_time"
    t.string "level_description"
    t.string "student_id"
    t.string "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_skills", force: :cascade do |t|
    t.string "date_achieved"
    t.string "level_skill_id"
    t.string "people_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.string "links_reference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.string "links_reference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
