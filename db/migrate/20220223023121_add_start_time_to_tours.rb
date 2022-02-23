class AddStartTimeToTours < ActiveRecord::Migration[6.1]
  def change
    add_column :tours, :start_time, :integer, default: 12, null: false
  end
end
