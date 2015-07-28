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

ActiveRecord::Schema.define(version: 20150728073108) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "assets", force: :cascade do |t|
    t.string   "storage_uid",          limit: 255
    t.string   "storage_name",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "storage_width",        limit: 4
    t.integer  "storage_height",       limit: 4
    t.float    "storage_aspect_ratio", limit: 24
    t.integer  "storage_depth",        limit: 4
    t.string   "storage_format",       limit: 255
    t.string   "storage_mime_type",    limit: 255
    t.string   "storage_size",         limit: 255
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id",   limit: 4
    t.string   "bootsy_resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file",       limit: 255
    t.integer  "image_gallery_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content",          limit: 65535
    t.integer  "user_id",          limit: 4
    t.integer  "commentable_id",   limit: 4
    t.string   "commentable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "image",       limit: 255
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "image",       limit: 255
    t.string   "place_id",    limit: 255
    t.text     "description", limit: 65535
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "place_images", force: :cascade do |t|
    t.string   "image",      limit: 255
    t.integer  "place_id",   limit: 4
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  add_index "place_images", ["place_id"], name: "index_place_images_on_place_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.integer  "country_id", limit: 4
    t.string   "name",       limit: 255
    t.text     "detail",     limit: 65535
    t.datetime "updated_at"
    t.datetime "created_at"
    t.float    "lat",        limit: 24
    t.float    "log",        limit: 24
  end

  add_index "places", ["country_id"], name: "index_places_on_country_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "image",       limit: 255
    t.string   "place_id",    limit: 255
    t.text     "description", limit: 65535
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "rich_rich_files", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name",    limit: 255
    t.string   "rich_file_content_type", limit: 255
    t.integer  "rich_file_file_size",    limit: 4
    t.datetime "rich_file_updated_at"
    t.string   "owner_type",             limit: 255
    t.integer  "owner_id",               limit: 4
    t.text     "uri_cache",              limit: 65535
    t.string   "simplified_type",        limit: 255,   default: "file"
  end

  create_table "souvenirs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image",      limit: 255
    t.integer  "place_id",   limit: 4
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  add_index "souvenirs", ["place_id"], name: "index_souvenirs_on_place_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "f_name",                 limit: 255
    t.string   "l_name",                 limit: 255
    t.string   "username",               limit: 255
    t.string   "tel",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
