# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('airports')

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
# Flight.create([{

#               }])
