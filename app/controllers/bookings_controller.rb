class BookingsController < ApplicationController
  def new
    @num_passengers = params[:num_passengers]
    @flight_id = params[:flight_id]
  end
end
