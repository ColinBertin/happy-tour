class ChangeToursStartTime < ActiveRecord::Migration[6.1]
  def change
    remove_column :tours, :start_time, :integer
    add_column :tours, :start_time, :datetime
  end
end
