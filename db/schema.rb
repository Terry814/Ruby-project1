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

ActiveRecord::Schema.define(version: 20150508095706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_sets", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "release_date"
    t.string   "set_type"
    t.string   "block"
    t.boolean  "online_only"
    t.boolean  "current_standard"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category"
    t.integer  "position",         default: 0
  end

  add_index "card_sets", ["code"], name: "index_card_sets_on_code", using: :btree
  add_index "card_sets", ["current_standard"], name: "index_card_sets_on_current_standard", using: :btree
  add_index "card_sets", ["name"], name: "index_card_sets_on_name", using: :btree
  add_index "card_sets", ["release_date"], name: "index_card_sets_on_release_date", using: :btree

  create_table "cards", force: true do |t|
    t.string   "name"
    t.string   "names",                    array: true
    t.string   "layout"
    t.string   "mana_cost"
    t.integer  "cmc"
    t.string   "colors",                   array: true
    t.string   "card_type"
    t.string   "supertypes",               array: true
    t.string   "types",                    array: true
    t.string   "subtypes",                 array: true
    t.string   "rarity"
    t.text     "text"
    t.text     "flavor"
    t.string   "artist"
    t.string   "number"
    t.string   "power"
    t.string   "toughness"
    t.integer  "loyalty"
    t.string   "multiverseid"
    t.string   "variations",               array: true
    t.string   "imageName"
    t.string   "watermark"
    t.string   "border"
    t.boolean  "timeshifted"
    t.string   "hand"
    t.string   "life"
    t.string   "set_code"
    t.integer  "card_set_id"
    t.integer  "price"
    t.integer  "inventory",    default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["card_set_id"], name: "index_cards_on_card_set_id", using: :btree
  add_index "cards", ["name"], name: "index_cards_on_name", using: :btree

  create_table "coupons", force: true do |t|
    t.string   "coupon_code"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "coupon_type"
    t.integer  "coupon_value"
    t.integer  "use_count"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", force: true do |t|
    t.integer  "sender_id"
    t.string   "recipient_email"
    t.string   "token"
    t.datetime "sent_at"
    t.datetime "registered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "origin"
    t.integer  "guest_id"
  end

  create_table "order_cards", force: true do |t|
    t.integer  "order_id"
    t.integer  "card_id"
    t.integer  "current_price"
    t.integer  "quantity",      default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "available"
  end

  add_index "order_cards", ["card_id"], name: "index_order_cards_on_card_id", using: :btree
  add_index "order_cards", ["order_id"], name: "index_order_cards_on_order_id", using: :btree
  add_index "order_cards", ["quantity"], name: "index_order_cards_on_quantity", using: :btree

  create_table "order_notes", force: true do |t|
    t.integer  "order_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.datetime "date_needed"
    t.integer  "amount"
    t.integer  "days_needed"
    t.datetime "date_due"
    t.integer  "coupon_id"
    t.text     "comment"
    t.datetime "authorized"
    t.boolean  "pulled",                             default: false
    t.boolean  "paid",                               default: false
    t.datetime "shipped"
    t.datetime "returned"
    t.string   "shipping_method"
    t.string   "ship_to_name"
    t.string   "street_address_first_line"
    t.string   "street_address_second_line"
    t.string   "city"
    t.string   "province"
    t.string   "zipcode"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shipping_reference_no"
    t.text     "shipping_message"
    t.datetime "due_back_warning"
    t.datetime "due_back_confirm"
    t.boolean  "pickup"
    t.float    "sales_tax_in",                       default: 0.0
    t.string   "canceled"
    t.string   "order_no"
    t.datetime "user_return_confirmation"
    t.string   "return_token"
    t.integer  "order_delayed",                      default: 0
    t.string   "billing_ship_to_name"
    t.string   "billing_street_address_first_line"
    t.string   "billing_street_address_second_line"
    t.string   "billing_city"
    t.string   "billing_province"
    t.string   "billing_zipcode"
    t.string   "billing_phone"
    t.string   "phone"
  end

  add_index "orders", ["authorized"], name: "index_orders_on_authorized", using: :btree
  add_index "orders", ["date_needed"], name: "index_orders_on_date_needed", using: :btree
  add_index "orders", ["days_needed"], name: "index_orders_on_days_needed", using: :btree
  add_index "orders", ["order_delayed"], name: "index_orders_on_order_delayed", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "site_settings", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stripe_charges", force: true do |t|
    t.integer  "order_id"
    t.string   "charge_id"
    t.integer  "amount"
    t.string   "last_4_digits"
    t.string   "card_type"
    t.string   "exp_month"
    t.string   "exp_year"
    t.text     "admin_memo"
    t.text     "invoice_memo"
    t.string   "charge_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "charge_date"
  end

  create_table "stripe_refunds", force: true do |t|
    t.integer  "stripe_charge_id"
    t.string   "refund_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "template_deck_cards", force: true do |t|
    t.integer  "template_deck_id"
    t.integer  "card_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "sideboard",        default: false
  end

  create_table "template_decks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "session_token"
    t.string   "time_zone"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "last_4_digits"
    t.string   "card_type"
    t.string   "stripe_customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "guest"
    t.string   "verification"
  end

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "verification_quizzes", force: true do |t|
    t.integer  "user_id"
    t.text     "answer_1"
    t.text     "answer_2"
    t.text     "answer_3"
    t.text     "answer_4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "answer_5"
  end

end
