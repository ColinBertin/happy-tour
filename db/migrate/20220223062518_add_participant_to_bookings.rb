class AddParticipantToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :participant, :integer, default: 1
  end
end
