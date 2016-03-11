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

ActiveRecord::Schema.define(version: 20160310201045) do

  create_table "listings", id: false do |t|
    t.primary_key   "listing_id"
    t.integer       "owner_id",                limit: 4,   null: false
    t.string        "title",                   limit: 255, null: false
    t.string        "description",             limit: 255, null: false
    t.string        "images",                  limit: 255
    t.string        "category",                limit: 255, null: false
    t.integer       "borrow_length",           limit: 4,   null: false
    t.date          "date_created",                        null: false
    t.date          "date_modified"
    t.string        "post_image_file_name",    limit: 255
    t.string        "post_image_content_type", limit: 255
    t.integer       "post_image_file_size",    limit: 4
    t.datetime      "post_image_updated_at"
  end

  create_table "users", id: false do |t|
    t.primary_key "user_id"
    t.string "name",         limit: 255, null: false
    t.string "address",      limit: 255, null: false
    t.string "city",         limit: 255, null: false
    t.string "state",        limit: 255, null: false
    t.string "zip",          limit: 255, null: false
    t.string "phone"
    t.string "email",        limit: 255, null: false
  end

end
