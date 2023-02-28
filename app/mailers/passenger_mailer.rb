class PassengerMailer < ApplicationMailer
  default from: 'notifications@flightbooker.com'

  def confirm_email
    @booking = params[:booking]
    @passengers = @booking.passengers
    @flight = @booking.flight
    emails = @passengers.map { |x| x[:email] }
    mail(to: emails, subject: "Flight Confirmation for Flight ##{@booking.flight_id}")
  end

end
