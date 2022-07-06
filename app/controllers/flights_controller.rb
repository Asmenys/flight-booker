class FlightsController < ApplicationController
    def index
        @departure_options = Flight.all.map{|flight| [flight.departure_airport.code]}.uniq
        @arrival_options = Flight.all.map{|flight| [flight.arrival_airport.code]}.uniq
        @departure_dates = Flight.select(:departure_date).distinct.order(departure_date: :asc).map{|flight| flight.departure_date}
        @passanger_options = Array.new(4) {|i = 0| [i+=1]}
        if params.key?("commit")
        @flights = Flight.where(departure_airport: Airport.find_by(code:params[:departure_airport]).id)
        @flights = @flights.where(arrival_airport: Airport.find_by(code:params[:arrival_airport]).id)
        @flights = @flights.where(departure_date: Date.parse(params[:departure_date]))
        end
    end

end
