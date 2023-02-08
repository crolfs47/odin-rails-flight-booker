class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  def depart_date_formatted
    depart_date.strftime('%m/%d/%Y')
  end
end
