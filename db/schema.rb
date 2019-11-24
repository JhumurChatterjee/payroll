# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_09_174712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.bigint "state_id"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "attachment"
    t.bigint "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_documents_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.string "email", limit: 100, null: false
    t.string "phone", limit: 100
    t.date "date_of_birth", null: false
    t.date "date_of_joining", null: false
    t.bigint "created_by_id"
    t.bigint "updated_by_id"
    t.string "street_address1", limit: 100, null: false
    t.string "street_address2", limit: 100, null: false
    t.string "pin_number1", limit: 100, null: false
    t.string "pin_number2", limit: 100, null: false
    t.bigint "city1_id"
    t.bigint "state1_id"
    t.bigint "country1_id"
    t.bigint "city2_id"
    t.bigint "state2_id"
    t.bigint "country2_id"
    t.bigint "department_id"
    t.bigint "workplace_id"
    t.bigint "status_id"
    t.bigint "leave_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city1_id"], name: "index_employees_on_city1_id"
    t.index ["city2_id"], name: "index_employees_on_city2_id"
    t.index ["country1_id"], name: "index_employees_on_country1_id"
    t.index ["country2_id"], name: "index_employees_on_country2_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["leave_type_id"], name: "index_employees_on_leave_type_id"
    t.index ["state1_id"], name: "index_employees_on_state1_id"
    t.index ["state2_id"], name: "index_employees_on_state2_id"
    t.index ["status_id"], name: "index_employees_on_status_id"
    t.index ["workplace_id"], name: "index_employees_on_workplace_id"
  end

  create_table "leave_types", force: :cascade do |t|
    t.string "leave_type", limit: 100, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payslips", force: :cascade do |t|
    t.string "bank_name", limit: 100, null: false
    t.string "bank_account", limit: 100, null: false
    t.integer "working_days", null: false
    t.decimal "leave_without_pay", precision: 3, scale: 1, default: "0.0"
    t.integer "month"
    t.integer "year"
    t.decimal "basic", precision: 10, scale: 2, default: "0.0"
    t.decimal "house_rent_allowance", precision: 10, scale: 2, default: "0.0"
    t.decimal "medical_allowance", precision: 10, scale: 2, default: "0.0"
    t.decimal "special_allowance", precision: 10, scale: 2, default: "0.0"
    t.decimal "conveyance_allowance", precision: 10, scale: 2, default: "0.0"
    t.decimal "gross_salary", precision: 10, scale: 2
    t.decimal "net_salary", precision: 10, scale: 2
    t.decimal "leave_with_pay", precision: 3, scale: 1, default: "0.0"
    t.integer "created_by"
    t.integer "updated_by"
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_payslips_on_employee_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status_type", limit: 100, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tax_types", force: :cascade do |t|
    t.string "type", limit: 100, null: false
    t.string "number", limit: 100, null: false
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_tax_types_on_employee_id"
  end

  create_table "workplaces", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_workplaces_on_name"
  end

  add_foreign_key "cities", "states"
  add_foreign_key "documents", "employees"
  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "leave_types"
  add_foreign_key "employees", "statuses"
  add_foreign_key "employees", "workplaces"
  add_foreign_key "payslips", "employees"
  add_foreign_key "states", "countries"
  add_foreign_key "tax_types", "employees"
end
