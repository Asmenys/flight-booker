class FlightsController < ApplicationController
    def index
        @flights = []
        set_options  
        query_flights
    end

    private

    def query_flights
        if params.key?("commit")
            @flights = Flight.where(departure_airport: Airport.find_by(code: params[:departure_airport]).id)
            @flights = @flights.where(arrival_airport: Airport.find_by(code: params[:arrival_airport]).id)
            @flights = @flights.where(departure_date: Date.parse(params[:departure_date]))
        end
    end

    def set_options
        @departure_options = Flight.departing_flight_codes
        @arrival_options = Flight.arriving_flight_codes
        @departure_dates = Flight.departure_dates
        @passanger_options = Array.new(4) {|i = 0| [i+=1]}
    end
end
