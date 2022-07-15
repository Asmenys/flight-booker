class PassengerMailer < ApplicationMailer
    default from: 'flight_booker@flights.com'

    def confirmation_email(booking)
       @user = booking.passengers.first
       @flight = booking.flight
       @url = "http://flight-booker/bookings/#{booking.id}"
       @arrival_time = @flight.departure_time.advance(hours:@flight.duration)
       mail(to: @user.email, subject: "successfull ticket order")
    end
end
