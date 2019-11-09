class CreateTaxTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :tax_types do |t|
      t.string :type,   null: false, limit: 100
      t.string :number, null: false, limit: 100
      
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

