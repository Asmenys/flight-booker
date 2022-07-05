class FlightsController < ApplicationController
    def index
        @departure_options = Flight.all.map{|flight| [flight.departure_airport.code]}.uniq
    end
end
