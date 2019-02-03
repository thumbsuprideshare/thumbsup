class CreateRide < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :to_location_id
      t.integer :from_location_id
      t.datetime :ride_date
      t.integer :user_id
      t.integer :seats, default: 0
      t.timestamps null: false
    end
  end
end
