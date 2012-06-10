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

ActiveRecord::Schema.define(:version => 20120529124417) do

  create_table "blog_comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "blog_id"
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.text     "comment"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_comments", ["comment_id"], :name => "index_blog_comments_on_comment_id"
  add_index "blog_comments", ["user_id"], :name => "index_blog_comments_on_user_id"

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "topic"
    t.string   "author"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "comment_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "borrowers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "property_address"
    t.integer  "bedrooms"
    t.string   "baths"
    t.string   "current_market_value"
    t.string   "liens_against_property"
    t.text     "description"
    t.boolean  "under_contract"
    t.string   "referral"
    t.datetime "closing_date"
    t.string   "repairs_needed"
    t.string   "purchase_price"
    t.text     "exit_strategy"
    t.string   "loan_type_requesting"
    t.string   "gross_monthly_income"
    t.string   "loan_amount_requested"
    t.string   "length_of_term_anticipated"
    t.string   "property_info"
    t.text     "loan_summary_overview"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buyers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.text     "areas_of_interest"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "bedrooms"
    t.string   "baths"
    t.string   "price_range"
    t.string   "referral"
    t.string   "when_to_move_in"
    t.boolean  "need_financing"
    t.string   "monthly_payment"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chronologies", :force => true do |t|
    t.integer  "prospective_property_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chronologies", ["prospective_property_id"], :name => "index_chronologies_on_prospective_property_id"

  create_table "contact_addresses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "label"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contact_addresses", ["contact_id"], :name => "index_contact_addresses_on_contact_id"
  add_index "contact_addresses", ["user_id"], :name => "index_contact_addresses_on_user_id"

  create_table "contact_dates", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.datetime "date"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contact_dates", ["contact_id"], :name => "index_contact_dates_on_contact_id"
  add_index "contact_dates", ["user_id"], :name => "index_contact_dates_on_user_id"

  create_table "contact_emails", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "email"
    t.string   "label"
    t.boolean  "primary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contact_emails", ["contact_id"], :name => "index_contact_emails_on_contact_id"
  add_index "contact_emails", ["user_id"], :name => "index_contact_emails_on_user_id"

  create_table "contact_notes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "note"
    t.datetime "reminder"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contact_notes", ["contact_id"], :name => "index_contact_notes_on_contact_id"
  add_index "contact_notes", ["user_id"], :name => "index_contact_notes_on_user_id"

  create_table "contact_phones", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "phone"
    t.string   "ext"
    t.string   "country"
    t.string   "country_code"
    t.string   "code"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contact_phones", ["contact_id"], :name => "index_contact_phones_on_contact_id"
  add_index "contact_phones", ["user_id"], :name => "index_contact_phones_on_user_id"

  create_table "contact_websites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "label"
    t.string   "website"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contact_websites", ["contact_id"], :name => "index_contact_websites_on_contact_id"
  add_index "contact_websites", ["user_id"], :name => "index_contact_websites_on_user_id"

  create_table "contacts", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "username"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["user_id"], :name => "index_contacts_on_user_id"

  create_table "labels", :force => true do |t|
    t.string   "description"
    t.integer  "position"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lenders", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.boolean  "lent_before_on_property"
    t.string   "how_much_can_you_lend"
    t.string   "what_geographical_area_of_interest"
    t.string   "how_fast_can_you_move_funds"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prospective_properties", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "bedrooms"
    t.float    "bathrooms"
    t.integer  "price"
    t.integer  "squareft"
    t.integer  "rentometer"
    t.integer  "year_built"
    t.integer  "interest"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.string   "source"
    t.integer  "taxes"
    t.string   "contact"
    t.integer  "arv"
    t.integer  "max_bid"
    t.integer  "repair_estimate"
    t.string   "comment"
    t.string   "style"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prospective_properties", ["user_id"], :name => "index_prospective_properties_on_user_id"

  create_table "prospects", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.boolean  "buy"
    t.boolean  "sell"
    t.boolean  "borrow"
    t.boolean  "lend"
    t.boolean  "stop_mail",        :default => false
    t.boolean  "actively_mailing", :default => true
    t.string   "key_code"
    t.string   "comment"
    t.string   "client_info"
    t.string   "type_of_prospect"
    t.string   "ip"
    t.string   "site_referrer"
    t.string   "tracking_id"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "bedrooms"
    t.string   "baths"
    t.string   "current_market_value"
    t.string   "liens_against_property"
    t.string   "referral"
    t.string   "when_to_sell"
    t.string   "current_on_payments"
    t.string   "repairs_needed"
    t.boolean  "on_mls",                 :default => false
    t.string   "reator_contact_info"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",               :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "name"
    t.string   "email"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "work_infos", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "company_name"
    t.string   "job_title"
    t.string   "work_email"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "label"
    t.date     "started_working"
    t.date     "stopped_working"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_infos", ["contact_id"], :name => "index_work_infos_on_contact_id"
  add_index "work_infos", ["user_id"], :name => "index_work_infos_on_user_id"

end
