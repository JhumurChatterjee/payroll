class CreateLeaveTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :leave_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
