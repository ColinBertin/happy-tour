class AddEndTimeToTours < ActiveRecord::Migration[6.1]
  def change
    add_column :tours, :end_time, :integer, default: 14, null: false
  end
end
