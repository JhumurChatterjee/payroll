class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :booking_identity
      t.bigint :created_by_id
      t.bigint :updated_by_id

      t.timestamps
    end
  end
end
