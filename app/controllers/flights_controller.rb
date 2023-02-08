class FlightsController < ApplicationController


  def index
    @flights = Flight.all
    @date_options = Flight.all.map{ |flight| [flight.depart_date.strftime("%m/%d/%Y")]}
    @airport_options = Airport.all.map{ |airport| [airport.code, airport.id]}
    @flight_options = Flight.all.where(departure_airport_id: params[:departure_airport_id])
  end

  private

  def post_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :depart_date, :flight_duration, :num_passengers)
  end
end
