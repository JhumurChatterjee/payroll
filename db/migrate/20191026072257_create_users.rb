class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name,            limit: 250, null: false
      t.string :email,           limit: 250, null: false
      t.string :phone,           limit: 250
      t.boolean :admin,          default: false
      t.string :password_digest, limit: 250
      t.references :workplace,   foreign_key: true, index: true

      t.timestamps
    end
  end
end
