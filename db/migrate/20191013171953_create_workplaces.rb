class CreateWorkplaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workplaces do |t|
      t.string :name, null: false, limit: 50

      t.timestamps
    end

    add_index :workplaces, :name
  end
end
