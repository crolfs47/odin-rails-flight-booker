class RemovePassIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_index :bookings, :passenger_id
    remove_column :bookings, :passenger_id, :bigint
  end
end
