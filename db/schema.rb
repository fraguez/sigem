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

ActiveRecord::Schema.define(version: 20190715010058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_brands_on_name", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "check_ins", force: :cascade do |t|
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_check_ins_on_employee_id", using: :btree
  end

  create_table "check_outs", force: :cascade do |t|
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_check_outs_on_employee_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condition_sales", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currency_codes", force: :cascade do |t|
    t.string   "country"
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customermanagerdetails", force: :cascade do |t|
    t.string   "officenumber"
    t.string   "extension"
    t.string   "cellnumber"
    t.string   "faxnumber"
    t.string   "officialemail"
    t.string   "secundaryemail"
    t.integer  "customermanager_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["customermanager_id"], name: "index_customermanagerdetails_on_customermanager_id", using: :btree
  end

  create_table "customermanagers", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "identificationcard"
    t.string   "name"
    t.string   "lastname"
    t.date     "birthday"
    t.integer  "sex_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["customer_id"], name: "index_customermanagers_on_customer_id", using: :btree
    t.index ["sex_id"], name: "index_customermanagers_on_sex_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "legalcertificate"
    t.string   "name"
    t.string   "businessname"
    t.integer  "customer_type_id"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "district_id"
    t.integer  "neighborhood_id"
    t.string   "othersing"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["city_id"], name: "index_customers_on_city_id", using: :btree
    t.index ["customer_type_id"], name: "index_customers_on_customer_type_id", using: :btree
    t.index ["district_id"], name: "index_customers_on_district_id", using: :btree
    t.index ["neighborhood_id"], name: "index_customers_on_neighborhood_id", using: :btree
    t.index ["state_id"], name: "index_customers_on_state_id", using: :btree
  end

  create_table "districts", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.integer  "state_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_districts_on_city_id", using: :btree
    t.index ["state_id"], name: "index_districts_on_state_id", using: :btree
  end

  create_table "document_authorizations", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_references", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "identificationcard"
    t.string   "name"
    t.string   "lastname"
    t.date     "birthday"
    t.integer  "sex_id"
    t.date     "admissiondate"
    t.date     "departuredate"
    t.decimal  "salary"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["sex_id"], name: "index_employees_on_sex_id", using: :btree
  end

  create_table "id_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.integer  "brand_id"
    t.integer  "unit_id"
    t.integer  "stock"
    t.integer  "min_stock"
    t.integer  "category_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.decimal  "price",       precision: 8, scale: 2
    t.index ["brand_id"], name: "index_items_on_brand_id", using: :btree
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
    t.index ["unit_id"], name: "index_items_on_unit_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.integer  "district_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_neighborhoods_on_city_id", using: :btree
    t.index ["district_id"], name: "index_neighborhoods_on_district_id", using: :btree
    t.index ["state_id"], name: "index_neighborhoods_on_state_id", using: :btree
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provider_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "providermanagerdetails", force: :cascade do |t|
    t.string   "officenumber"
    t.string   "extension"
    t.string   "cellnumber"
    t.string   "faxnumber"
    t.string   "officialemail"
    t.string   "secundaryemail"
    t.integer  "providermanager_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["providermanager_id"], name: "index_providermanagerdetails_on_providermanager_id", using: :btree
  end

  create_table "providermanagers", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "identificationcard"
    t.string   "name"
    t.string   "lastname"
    t.date     "birthday"
    t.integer  "sex_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["provider_id"], name: "index_providermanagers_on_provider_id", using: :btree
    t.index ["sex_id"], name: "index_providermanagers_on_sex_id", using: :btree
  end

  create_table "providers", force: :cascade do |t|
    t.string   "legalcertificate"
    t.string   "name"
    t.string   "businessname"
    t.integer  "provider_type_id"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "district_id"
    t.integer  "neighborhood_id"
    t.string   "othersing"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["city_id"], name: "index_providers_on_city_id", using: :btree
    t.index ["district_id"], name: "index_providers_on_district_id", using: :btree
    t.index ["neighborhood_id"], name: "index_providers_on_neighborhood_id", using: :btree
    t.index ["provider_type_id"], name: "index_providers_on_provider_type_id", using: :btree
    t.index ["state_id"], name: "index_providers_on_state_id", using: :btree
  end

  create_table "sale_details", force: :cascade do |t|
    t.integer  "sale_id"
    t.integer  "number"
    t.integer  "item_id"
    t.integer  "qty"
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "number"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state"
    t.integer  "user_id"
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_states_on_city_id", using: :btree
  end

  create_table "taxes", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towns", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_codes", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_document_references", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_vouchers", force: :cascade do |t|
    t.string   "name"
    t.string   "label"
    t.string   "acronym"
    t.string   "xmlSchema"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "symbol"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vacations", force: :cascade do |t|
    t.string   "detail"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "state"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_vacations_on_employee_id", using: :btree
  end

  add_foreign_key "check_ins", "employees"
  add_foreign_key "check_outs", "employees"
  add_foreign_key "customermanagerdetails", "customermanagers"
  add_foreign_key "customermanagers", "customers"
  add_foreign_key "customermanagers", "sexes"
  add_foreign_key "customers", "cities"
  add_foreign_key "customers", "customer_types"
  add_foreign_key "customers", "districts"
  add_foreign_key "customers", "neighborhoods"
  add_foreign_key "customers", "states"
  add_foreign_key "districts", "cities"
  add_foreign_key "districts", "states"
  add_foreign_key "employees", "sexes"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "units"
  add_foreign_key "neighborhoods", "cities"
  add_foreign_key "neighborhoods", "districts"
  add_foreign_key "neighborhoods", "states"
  add_foreign_key "providermanagerdetails", "providermanagers"
  add_foreign_key "providermanagers", "providers"
  add_foreign_key "providermanagers", "sexes"
  add_foreign_key "providers", "cities"
  add_foreign_key "providers", "districts"
  add_foreign_key "providers", "neighborhoods"
  add_foreign_key "providers", "provider_types"
  add_foreign_key "providers", "states"
  add_foreign_key "states", "cities"
  add_foreign_key "vacations", "employees"
end
