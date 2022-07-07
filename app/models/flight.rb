class Flight < ApplicationRecord
    belongs_to :arrival_airport, class_name: "Airport"
    belongs_to :departure_airport, class_name: "Airport"
    has_many :bookings, foreign_key: "flight_id"

    Flight.all.map{|flight| [flight.arrival_airport.code]}.uniq
    scope :arriving_flight_codes, -> {select(:arrival_airport_id).distinct.order(arrival_airport_id: :asc).map(&:arrival_airport).map(&:code)}
    scope :departing_flight_codes, -> {select(:departure_airport_id).distinct.order(departure_airport_id: :asc).map(&:departure_airport).map(&:code)}
    scope :departure_dates, -> {Flight.select(:departure_date).distinct.order(departure_date: :asc).map{|flight| flight.departure_date}}
end
