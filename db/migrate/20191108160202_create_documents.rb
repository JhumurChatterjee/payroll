class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.bigint :created_by_id
      t.bigint :updated_by_id
      t.references :booking, foreign_key: true
      t.timestamps
    end
  end
end
