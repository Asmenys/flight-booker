class FlightsController < ApplicationController
    def index
        @departure_options = Flight.all.map{|flight| [flight.departure_airport.code]}.uniq
        @arrival_options = Flight.all.map{|flight| [flight.arrival_airport.code]}.uniq
        @departure_dates = Flight.all.map{|flight| [flight.departure_date]}.uniq
    end

end
