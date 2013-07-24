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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130723050335) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "booking_comments", :force => true do |t|
    t.integer  "booking_id"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "booking_comments", ["booking_id"], :name => "index_booking_comments_on_booking_id"
  add_index "booking_comments", ["user_id"], :name => "index_booking_comments_on_user_id"

  create_table "booking_histories", :force => true do |t|
    t.integer  "booking_id"
    t.integer  "booking_status_id"
    t.string   "remark"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "booking_histories", ["booking_id"], :name => "index_booking_histories_on_booking_id"
  add_index "booking_histories", ["booking_status_id"], :name => "index_booking_histories_on_booking_status_id"

  create_table "booking_statuses", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "name_en"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bookings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "offer_id"
    t.integer  "booking_status_id"
    t.string   "guest_name"
    t.string   "guest_contact_info"
    t.string   "guest_extra_info"
    t.float    "total_payment_in_rmb"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "bookings", ["booking_status_id"], :name => "index_bookings_on_booking_status_id"
  add_index "bookings", ["offer_id"], :name => "index_bookings_on_offer_id"
  add_index "bookings", ["user_id"], :name => "index_bookings_on_user_id"

  create_table "currency_to_rmb_rates", :force => true do |t|
    t.integer  "offer_source_currency_type_id"
    t.float    "rate"
    t.boolean  "reviewed"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "currency_to_rmb_rates", ["created_at"], :name => "index_currency_to_rmb_rates_on_created_at"
  add_index "currency_to_rmb_rates", ["offer_source_currency_type_id"], :name => "index_currency_to_rmb_rates_on_offer_source_currency_type_id"

  create_table "offer_images", :force => true do |t|
    t.integer  "offer_id"
    t.string   "uri"
    t.string   "preview_uri"
    t.integer  "width"
    t.integer  "height"
    t.boolean  "is_primary"
    t.string   "label"
    t.integer  "seq"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "offer_images", ["offer_id"], :name => "index_offer_images_on_offer_id"

  create_table "offer_owners", :force => true do |t|
    t.string   "name"
    t.string   "name_en"
    t.string   "supplier_name"
    t.string   "contact_person"
    t.string   "phone"
    t.string   "mobile"
    t.string   "fax"
    t.string   "email"
    t.string   "sns_qq"
    t.string   "sns_skype"
    t.string   "sns_whatapp"
    t.string   "sns_wechat"
    t.string   "sns_other"
    t.string   "home_page"
    t.text     "remark"
    t.boolean  "delegation"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "offer_regions", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "name_en"
    t.integer  "parent_id"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "offer_regions", ["code"], :name => "index_offer_regions_on_code", :unique => true
  add_index "offer_regions", ["parent_id"], :name => "index_offer_regions_on_parent_id"

  create_table "offer_reviews", :force => true do |t|
    t.integer  "offer_id"
    t.integer  "user_id"
    t.integer  "booking_id"
    t.text     "body"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "offer_reviews", ["booking_id"], :name => "index_offer_reviews_on_booking_id"
  add_index "offer_reviews", ["offer_id"], :name => "index_offer_reviews_on_offer_id"
  add_index "offer_reviews", ["user_id"], :name => "index_offer_reviews_on_user_id"

  create_table "offer_source_currency_types", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offer_source_types", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offer_sources", :force => true do |t|
    t.integer  "offer_code"
    t.integer  "source_id"
    t.string   "source_uri"
    t.text     "original_introduction"
    t.integer  "offer_source_type_id"
    t.integer  "offer_source_currency_type_id"
    t.integer  "offer_id"
    t.text     "remark"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "offer_sources", ["offer_id"], :name => "index_offer_sources_on_offer_id"
  add_index "offer_sources", ["offer_source_currency_type_id"], :name => "index_offer_sources_on_offer_source_currency_type_id"
  add_index "offer_sources", ["offer_source_type_id"], :name => "index_offer_sources_on_offer_source_type_id"

  create_table "offer_statuses", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "name_en"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offer_types", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "name_en"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "offer_types", ["code"], :name => "index_offer_types_on_code", :unique => true
  add_index "offer_types", ["name"], :name => "index_offer_types_on_name", :unique => true
  add_index "offer_types", ["name_en"], :name => "index_offer_types_on_name_en", :unique => true

  create_table "offers", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "name_en"
    t.integer  "offer_owner_id"
    t.integer  "offer_region_id"
    t.integer  "offer_status_id"
    t.integer  "offer_type_id"
    t.integer  "offer_source_type_id"
    t.integer  "offer_source_id"
    t.text     "description"
    t.string   "address"
    t.string   "address_en"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "bedroom_count"
    t.integer  "bathroom_count"
    t.integer  "total_room_count"
    t.integer  "total_bed_count"
    t.integer  "size_in_m2"
    t.integer  "max_guest_count"
    t.integer  "min_nights"
    t.integer  "max_nights"
    t.string   "contact_info"
    t.string   "contact_phone"
    t.string   "contact_mobile"
    t.string   "contact_email"
    t.decimal  "checkin_after",        :precision => 10, :scale => 0
    t.decimal  "checkout_before",      :precision => 10, :scale => 0
    t.text     "nearby"
    t.text     "amenities"
    t.text     "rules"
    t.text     "remark"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

  add_index "offers", ["code"], :name => "index_offers_on_code", :unique => true
  add_index "offers", ["offer_owner_id"], :name => "index_offers_on_offer_owner_id"
  add_index "offers", ["offer_region_id"], :name => "index_offers_on_offer_region_id"
  add_index "offers", ["offer_source_type_id"], :name => "index_offers_on_offer_source_type_id"
  add_index "offers", ["offer_status_id"], :name => "index_offers_on_offer_status_id"
  add_index "offers", ["offer_type_id"], :name => "index_offers_on_offer_type_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
