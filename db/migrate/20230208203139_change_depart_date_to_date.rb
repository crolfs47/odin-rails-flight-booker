class ChangeDepartDateToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :depart_date, :date
  end
end
