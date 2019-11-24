class CreateLeaveTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :leave_types do |t|
      t.string :leave_type, null: false, limit: 100

      t.timestamps
    end
  end
end
