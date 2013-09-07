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

ActiveRecord::Schema.define(version: 20130907182725) do

  create_table "code_languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "code_languages", ["name"], name: "index_code_languages_on_name", unique: true

  create_table "code_samples", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.text     "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "code_language_id"
    t.string   "tagline"
  end

  add_index "code_samples", ["code_language_id"], name: "index_code_samples_on_code_language_id"

  create_table "code_samples_skills", id: false, force: true do |t|
    t.integer "skill_id",       null: false
    t.integer "code_sample_id", null: false
  end

  add_index "code_samples_skills", ["code_sample_id", "skill_id"], name: "index_code_samples_skills_on_code_sample_id_and_skill_id", unique: true

  create_table "skills", force: true do |t|
    t.text     "title"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
