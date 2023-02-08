class FlightsController < ApplicationController


  def index
    @flights = Flight.all
    @flight_dates = @flights.map{ |flight| [flight.depart_date.strftime("%m/%d/%Y")]}
    @airport_options = Airport.all.map{ |airport| [airport.code]}
  end

  private

  def post_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :depart_date, :flight_duration, :num_passengers)
  end
end
