airport_codes = %w[NYC JAX MIA PBI JFK LGA WAS SEA DCA]
airport_codes.each do |airport_code|
    Airport.find_or_create_by(code: "#{airport_code}")
end

class RandomAirportSelector
    @@previous_airport_index = nil
    def self.get_airport
        while (current_airport_index = rand(1..Airport.all.length).to_i) == @@previous_airport_index
        end
        @@previous_airport_index = current_airport_index
        Airport.find(current_airport_index)
    end
end
