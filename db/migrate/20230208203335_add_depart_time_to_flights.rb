class AddDepartTimeToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :depart_time, :time
  end
end
