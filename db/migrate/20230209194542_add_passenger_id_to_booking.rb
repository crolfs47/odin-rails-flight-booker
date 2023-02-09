class AddPassengerIdToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :passenger, index: true
  end
end
