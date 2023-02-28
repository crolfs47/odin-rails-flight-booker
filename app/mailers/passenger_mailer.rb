class PassengerMailer < ApplicationMailer
  default from: 'notifications@flightbooker.com'

  def confirm_email
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'Flight Confirmation')
  end
  
end
