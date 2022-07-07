class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        params[:passenger_count].to_i.times{@booking.passengers.build}
    end

    def create
        @booking = Booking.create(booking_params)
        @booking.passengers.build(params[:booking][:passengers])
        if @booking.save
        else
            render 'new', status: :unprocessable_entity
        end
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
    end
end
