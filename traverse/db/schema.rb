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

ActiveRecord::Schema.define(version: 20150218120500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_tags", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "tag_id"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_tags", ["event_id"], name: "index_event_tags_on_event_id", using: :btree
  add_index "event_tags", ["tag_id"], name: "index_event_tags_on_tag_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.string   "content"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "url"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: :cascade do |t|
    t.string   "yelp_link"
    t.string   "address"
    t.string   "name"
    t.string   "photo_url"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "coordinates"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "photo_url",     default: "data:image/jpeg;base64,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"
    t.boolean  "default_photo", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "trips", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo",      default: "https://unsplash.imgix.net/11/converse-fields.jpg?fit=crop&fm=jpg&h=800&q=75&w=1050"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fb_uid"
    t.string   "fb_token"
    t.string   "ig_uid"
    t.string   "ig_token"
  end

end
