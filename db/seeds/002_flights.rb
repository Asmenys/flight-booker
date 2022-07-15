require 'faker'
class RandomFlightGenerator
    def self.generate_flight
        departure_time = Faker::Time.forward(days: 10, format: :default)
        flight = Flight.new
        flight.departure_time = departure_time
        flight.departure_date = departure_time
        flight.departure_airport = RandomAirportSelector::get_airport
        flight.arrival_airport = RandomAirportSelector::get_airport
        flight.duration = rand(2..24).to_i
        flight
    end
end

500.times {RandomFlightGenerator::generate_flight.save}