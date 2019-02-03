class CreateRidePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :ride_passengers do |t|
      t.integer :user_id
      t.integer :ride_id
      t.integer :status, default: 0
      t.timestamps null: false
    end
  end
end
