class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string     :name, null: false, limit: 100
      t.string     :email, null: false, limit: 100
      t.string     :phone, limit: 100
      t.date       :date_of_birth, null: false
      t.date       :date_of_joining, null: false
      t.bigint     :created_by_id
      t.bigint     :updated_by_id
      t.references :department, foreign_key: true
      t.references :workplace, foreign_key: true
      t.references :status, foreign_key: true
      t.references :leave_type, foreign_key: true

      t.timestamps
    end
  end
end

