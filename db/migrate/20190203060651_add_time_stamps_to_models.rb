class AddTimeStampsToModels < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :created_at, :datetime, null: false
    add_column :universities, :updated_at, :datetime, null: false

    add_column :addresses, :created_at, :datetime, null: false
    add_column :addresses, :updated_at, :datetime, null: false
  end
end
