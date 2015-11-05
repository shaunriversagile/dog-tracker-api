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

ActiveRecord::Schema.define(version: 20151105143928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "dog_id"
    t.datetime "appointment_date"
    t.string   "location"
    t.string   "vet_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "dietary_restrictions", force: :cascade do |t|
    t.integer  "dog_id"
    t.string   "food_name"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "weight"
    t.string   "age"
    t.string   "sex"
    t.boolean  "is_spayed_or_neutered"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "medications", force: :cascade do |t|
    t.integer  "dog_id"
    t.string   "name"
    t.string   "dose"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vaccinations", force: :cascade do |t|
    t.integer  "dog_id"
    t.string   "name"
    t.date     "last"
    t.date     "next"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
