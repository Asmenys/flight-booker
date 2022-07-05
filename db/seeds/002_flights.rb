class RandomAirportSelector
    @@previous_airport_index = nil
    def self.get_airport
        while (current_airport_index = rand(1..Airport.all.length).to_i) == @@previous_airport_index
        end
        @@previous_airport_index = current_airport_index
        Airport.find(current_airport_index)
    end
end

Flight.create(
    [{
      
        departure_time: Time.new(2024, 6, 1, 12, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 12, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 14, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 14, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 15, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 15, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 19, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 19, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 20, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 20, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 0, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 0, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 2, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 2, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 4, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 4, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 7, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 7, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 11, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 11, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 11, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 11, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 12, 0, 0, '-07:00'),
        departure_date: Time.new(2024, 6, 1, 12, 0, 0, '-07:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 15, 0, 0, '-05:00'),
        departure_date: Time.new(2024, 6, 1, 15, 0, 0, '-05:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 14, 0, 0, '-05:00'),
        departure_date: Time.new(2024, 6, 1, 14, 0, 0, '-05:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 14, 0, 0, '-05:00'),
        departure_date: Time.new(2024, 6, 1, 14, 0, 0, '-05:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 15, 0, 0, '-03:00'),
        departure_date: Time.new(2024, 6, 1, 15, 0, 0, '-03:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 15, 0, 0, '-03:00'),
        departure_date: Time.new(2024, 6, 1, 15, 0, 0, '-03:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 16, 0, 0, '-03:00'),
        departure_date: Time.new(2024, 6, 1, 16, 0, 0, '-03:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 18, 0, 0, '+02:00'),
        departure_date: Time.new(2024, 6, 1, 18, 0, 0, '+02:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 18, 0, 0, '+02:00'),
        departure_date: Time.new(2024, 6, 1, 18, 0, 0, '+02:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }, {
      
        departure_time: Time.new(2024, 6, 1, 19, 0, 0, '+02:00'),
        departure_date: Time.new(2024, 6, 1, 19, 0, 0, '+02:00'),        departure_airport: RandomAirportSelector.get_airport,
        arrival_airport: RandomAirportSelector.get_airport
    }]
  )