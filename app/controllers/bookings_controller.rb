class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        params[:flight][:passenger_count].to_i.times{@booking.passengers.build}
    end

    def create
        @booking = Booking.new(booking_params)
        if @booking.save
            PassengerMailer.confirmation_email(@booking).deliver_now!
            redirect_to @booking
        else
            render 'edit', status: :unprocessable_entity
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
    end
end
