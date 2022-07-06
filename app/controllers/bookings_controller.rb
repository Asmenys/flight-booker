class BookingsController < ApplicationController
    def new
        @booking = Booking.new(flight_id: params[:flight_id])
    end

    def create
        @booking = Booking.new(flight_id: params[:flight_id])
    end
end
