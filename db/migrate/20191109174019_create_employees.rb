class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string     :name,            null: false, limit: 100
      t.string     :email,           null: false, limit: 100
      t.string     :phone,           limit: 100
      t.date       :date_of_birth,   null: false
      t.date       :date_of_joining, null: false
      t.bigint     :created_by_id
      t.bigint     :updated_by_id
      t.string     :street_address1, null: false, limit: 100
      t.string     :street_address2, null: false, limit: 100
      t.string     :pin_number1,     null: false, limit: 100
      t.string     :pin_number2,     null: false, limit: 100
      t.bigint     :city1_id
      t.bigint     :state1_id
      t.bigint     :country1_id
      t.bigint     :city2_id
      t.bigint     :state2_id
      t.bigint     :country2_id
      t.references :department,      foreign_key: true
      t.references :workplace,       foreign_key: true
      t.references :status,          foreign_key: true
      t.references :leave_type,      foreign_key: true
      t.index      :city1_id
      t.index      :state1_id
      t.index      :city2_id
      t.index      :state2_id
      t.index      :country1_id
      t.index      :country2_id

      t.timestamps
    end
  end
end

