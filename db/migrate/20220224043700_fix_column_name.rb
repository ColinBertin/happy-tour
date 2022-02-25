class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :tours, :end_time, :duration
  end
end
