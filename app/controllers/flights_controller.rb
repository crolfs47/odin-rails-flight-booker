class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @date_options = Flight.all.map { |flight| [flight.depart_date_formatted] }
    @airport_options = Airport.all.map { |airport| [airport.code, airport.id] }
    @available_flights = find_flights
    # if params
    #   @selected_date = Date.new(params['depart_date(1i)'].to_i, params['depart_date(2i)'].to_i, params['depart_date(3i)'].to_i)
    #   @available_flights = Flight.all.where(departure_airport_id: params[:departure_airport_id]).where(arrival_airport_id: params[:arrival_airport_id]).where("depart_date = ?", @selected_date)
    # end
  end

  private

  def find_flights
    return [] unless params['depart_date(1i)'].present?

    date = Date.new(params['depart_date(1i)'].to_i, params['depart_date(2i)'].to_i, params['depart_date(3i)'].to_i)
    Flight.all.where(departure_airport_id: params[:departure_airport_id]).where(arrival_airport_id: params[:arrival_airport_id]).where("depart_date = ?", date)
  end

  def post_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :depart_date, :flight_duration,
                                   :num_passengers)
  end
end