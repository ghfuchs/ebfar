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

ActiveRecord::Schema.define(:version => 20110216224929) do

  create_table "collections", :force => true do |t|
    t.string  "customer_id",    :limit => 9
    t.date    "collect_date"
    t.string  "collect_time",   :limit => 4
    t.string  "collect_line",   :limit => 2
    t.string  "collect_user",   :limit => 4
    t.string  "response_code",  :limit => 2
    t.decimal "promise_amount",              :default => 0.0
    t.date    "promise_date"
    t.date    "call_date"
    t.string  "call_time",      :limit => 4
    t.string  "letter_code",    :limit => 2
    t.string  "collector",      :limit => 2
  end

  create_table "comments", :force => true do |t|
    t.string "customer_id",  :limit => 9
    t.date   "comment_date"
    t.string "comment_time", :limit => 4
    t.string "comment_line", :limit => 2
    t.string "comment_user", :limit => 4
    t.string "comment",      :limit => 74
  end

  create_table "contract_items", :force => true do |t|
    t.string  "acctcont_key",    :limit => 17
    t.string  "customer_id",     :limit => 9
    t.string  "contract_number", :limit => 8
    t.string  "stock_number",    :limit => 12
    t.integer "qty"
    t.integer "pieces"
    t.string  "description",     :limit => 33
  end

  create_table "contracts", :force => true do |t|
    t.string  "acctcont_key",            :limit => 17
    t.string  "customer_id",             :limit => 9
    t.string  "contract_number",         :limit => 8
    t.string  "approval_no",             :limit => 8
    t.date    "approval_date"
    t.date    "refinance_date"
    t.string  "insurance_code",          :limit => 1
    t.decimal "life_ins_amount",                       :default => 0.0
    t.decimal "anh_ins_amount",                        :default => 0.0
    t.decimal "fire_ins_amount",                       :default => 0.0
    t.date    "contract_date"
    t.decimal "principal_amount",                      :default => 0.0
    t.integer "term"
    t.integer "payments_remaining"
    t.decimal "balance",                               :default => 0.0
    t.decimal "monthly_payment",                       :default => 0.0
    t.decimal "current_payment",                       :default => 0.0
    t.decimal "over_30",                               :default => 0.0
    t.decimal "over_60",                               :default => 0.0
    t.decimal "over_90",                               :default => 0.0
    t.decimal "partial_payment",                       :default => 0.0
    t.date    "due_date"
    t.date    "maturity_date"
    t.date    "paidout_date"
    t.string  "aclass",                  :limit => 2
    t.decimal "interest",                              :default => 0.0
    t.decimal "tax_amount",                            :default => 0.0
    t.date    "contract_delivered_date"
    t.decimal "merchandise_total",                     :default => 0.0
    t.decimal "office_fee",                            :default => 0.0
    t.decimal "pl_loss",                               :default => 0.0
    t.decimal "late_charge",                           :default => 0.0
    t.decimal "contract_amount",                       :default => 0.0
    t.string  "history",                 :limit => 24
    t.string  "status",                  :limit => 1
  end

  create_table "customers", :force => true do |t|
    t.string  "customer_id",             :limit => 9
    t.string  "social_security_no",      :limit => 9
    t.string  "title",                   :limit => 4
    t.string  "last_name",               :limit => 20
    t.string  "first_name",              :limit => 16
    t.string  "address1",                :limit => 24
    t.string  "address2",                :limit => 24
    t.string  "city",                    :limit => 20
    t.string  "state",                   :limit => 2
    t.string  "zipcode",                 :limit => 5
    t.string  "home_phone",              :limit => 7
    t.string  "business_phone",          :limit => 7
    t.date    "date_opened"
    t.decimal "beg_year_balance",                      :default => 0.0
    t.decimal "beg_qtr_balance",                       :default => 0.0
    t.decimal "beg_month_balance",                     :default => 0.0
    t.date    "beg_date"
    t.string  "status",                  :limit => 1
    t.string  "previous_account_number", :limit => 9
    t.integer "num_of_bad_checks",                     :default => 0
    t.decimal "bad_check_amount",                      :default => 0.0
    t.string  "comaker_last_name",       :limit => 20
    t.string  "comaker_first_name",      :limit => 16
    t.string  "comaker_address",         :limit => 24
    t.string  "comaker_zipcode",         :limit => 5
    t.string  "comaker_relationship",    :limit => 10
    t.string  "comaker_account_number",  :limit => 9
    t.string  "comaker_phone",           :limit => 7
    t.decimal "credit",                                :default => 0.0
    t.decimal "cash",                                  :default => 0.0
    t.decimal "balance",                               :default => 0.0
  end

  add_index "customers", ["customer_id"], :name => "index_customers_on_account_number", :unique => true

  create_table "transacts", :force => true do |t|
    t.string  "acctcont_key",    :limit => 17
    t.string  "customer_id",     :limit => 9
    t.string  "contract_number", :limit => 8
    t.string  "location",        :limit => 2
    t.string  "tran_code",       :limit => 2
    t.date    "tran_date"
    t.decimal "tran_amount",                   :default => 0.0
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
