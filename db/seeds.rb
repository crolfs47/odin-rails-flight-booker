# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'time'

Airport.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('airports')
Flight.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('flights')
ActiveRecord::Base.connection.reset_pk_sequence!('bookings')
ActiveRecord::Base.connection.reset_pk_sequence!('passengers')

airports = Airport.create([
  { code: 'ORD', city: 'Chicago' },
  { code: 'LAX', city: 'Los Angeles' },
  { code: 'MIA', city: 'Miami' },
  { code: 'DEN', city: 'Denver' },
  { code: 'CLT', city: 'Charlotte' },
  { code: 'ATL', city: 'Atlanta' },
  { code: 'DFW', city: 'Dallas' },
  { code: 'PHX', city: 'Phoenix' },
  { code: 'MCO', city: 'Orlando' },
  { code: 'LAS', city: 'Las Vegas' }])

puts "Created #{airports.length} airports"

airports.each do |depart_airport|
  1000.times do |i|
    Flight.create({
      departure_airport_id: depart_airport.id,
      arrival_airport_id: rand(1..10), 
      depart_date: Date.today + rand(30),
      flight_duration: rand(45..300),
      depart_time: rand(Time.find_zone("UTC").parse('5:00 am')..Time.find_zone("UTC").parse('10:00 pm')),
    })
  end
end

puts "Generated random flights"

# flights = Flight.create([
#   { departure_airport_id: 1, arrival_airport_id: 2, depart_date: "2023-03-01", flight_duration: 120, depart_time: "08:00" },
#   { departure_airport_id: 1, arrival_airport_id: 2, depart_date: "2023-03-01", flight_duration: 160, depart_time: "09:30" },
#   { departure_airport_id: 1, arrival_airport_id: 2, depart_date: "2023-03-01", flight_duration: 120, depart_time: "10:00" },
#   { departure_airport_id: 1, arrival_airport_id: 3, depart_date: "2023-03-01", flight_duration: 160, depart_time: "11:00" },
#   { departure_airport_id: 1, arrival_airport_id: 4, depart_date: "2023-03-01", flight_duration: 120, depart_time: "12:00" },
#   { departure_airport_id: 1, arrival_airport_id: 5, depart_date: "2023-03-01", flight_duration: 160, depart_time: "13:00" },
#   { departure_airport_id: 1, arrival_airport_id: 6, depart_date: "2023-03-01", flight_duration: 120, depart_time: "13:30" },
#   { departure_airport_id: 1, arrival_airport_id: 7, depart_date: "2023-03-01", flight_duration: 160, depart_time: "14:00" },
#   { departure_airport_id: 2, arrival_airport_id: 3, depart_date: "2023-03-02", flight_duration: 120, depart_time: "15:00" },
#   { departure_airport_id: 3, arrival_airport_id: 4, depart_date: "2023-03-03", flight_duration: 160, depart_time: "15:30" },
#   { departure_airport_id: 4, arrival_airport_id: 5, depart_date: "2023-03-04", flight_duration: 120, depart_time: "16:00" },
#   { departure_airport_id: 5, arrival_airport_id: 6, depart_date: "2023-03-05", flight_duration: 150, depart_time: "17:00" },
#   { departure_airport_id: 6, arrival_airport_id: 7, depart_date: "2023-03-06", flight_duration: 120, depart_time: "18:00" },
#   { departure_airport_id: 7, arrival_airport_id: 8, depart_date: "2023-03-07", flight_duration: 150, depart_time: "18:30" },
#   { departure_airport_id: 8, arrival_airport_id: 9, depart_date: "2023-03-08", flight_duration: 120, depart_time: "19:00" },
#   { departure_airport_id: 9, arrival_airport_id: 10, depart_date: "2023-03-09", flight_duration: 150, depart_time: "07:00" },
#   { departure_airport_id: 10, arrival_airport_id: 1, depart_date: "2023-03-10", flight_duration: 120, depart_time: "06:00" },
#               ])
# puts "Created #{flights.length} flights"