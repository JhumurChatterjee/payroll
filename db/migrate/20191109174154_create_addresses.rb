class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string     :street_name,  null: false, limit: 100
      t.string     :pin_number,   null: false, limit: 100
      t.references :city,     null: false, foreign_key: true
      t.references :state,    null: false, foreign_key: true
      t.references :country,  null: false, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end

