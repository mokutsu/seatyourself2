class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
