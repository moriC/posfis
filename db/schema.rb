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

ActiveRecord::Schema.define(version: 20140105150323) do

  create_table "activities", force: true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "asct_infos", force: true do |t|
    t.string   "dealer"
    t.string   "manager"
    t.integer  "manager_number"
    t.string   "manager_address"
    t.integer  "manager_tel"
    t.string   "manager_mail"
    t.text     "additional_costs"
    t.text     "order_method"
    t.text     "pay_method"
    t.text     "pay_limit"
    t.text     "delivered_time"
    t.text     "return_method"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "delivery_types", force: true do |t|
    t.string   "type_name"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_types", force: true do |t|
    t.string   "type_name"
    t.integer  "type_condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", force: true do |t|
    t.integer  "for_user_id"
    t.integer  "log_type"
    t.text     "log_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_blog_categories", force: true do |t|
    t.string   "category_name"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_blogs", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "title"
    t.text     "content"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "manage_friends", force: true do |t|
    t.integer  "from_user_id"
    t.integer  "to_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manage_products", force: true do |t|
    t.string   "product_name"
    t.integer  "product_type_id"
    t.integer  "user_id"
    t.integer  "price"
    t.integer  "sp_price"
    t.integer  "count"
    t.integer  "delivery_fee"
    t.integer  "delivery_type_id"
    t.text     "contents"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "buyer_user_id"
    t.integer  "business_user_id"
    t.integer  "product_id"
    t.string   "product_value",    limit: 11
    t.string   "express_token"
    t.string   "express_payer_id"
    t.string   "request_count"
    t.string   "price"
    t.integer  "send_condition"
    t.string   "name"
    t.string   "address_number"
    t.string   "address"
    t.string   "user_email"
    t.string   "user_tel"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", force: true do |t|
    t.string   "type_name"
    t.integer  "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "user_type"
    t.integer  "user_auth"
    t.string   "user_name"
    t.string   "user_address_number"
    t.string   "user_address"
    t.string   "paypal_login"
    t.string   "paypal_password"
    t.string   "paypal_signature"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
