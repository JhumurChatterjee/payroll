class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string     :name, null: false, limit: 100
      t.references :state, foreign_key: true
    end
  end
end
