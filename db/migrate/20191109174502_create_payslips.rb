class CreatePayslips < ActiveRecord::Migration[6.0]
  def change
    create_table :payslips do |t|
      t.string  "bank_name", null: false, limit: 100
      t.string  "bank_account", null: false, limit: 100
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
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

