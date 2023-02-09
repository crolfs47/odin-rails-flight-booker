class BookingsController < ApplicationController
  def new
    
    @flight_id = params[:flight_id]
    @flight = Flight.find(@flight_id)
    @passenger = Passenger.new
    @booking = Booking.new
    @num_passengers = params[:num_passengers].to_i
    @num_passengers.times { @booking.passengers.build }
  end

  def create 
  end
end
