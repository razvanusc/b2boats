class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :boat, foreign_key: true
      t.integer :status, default: 0
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
