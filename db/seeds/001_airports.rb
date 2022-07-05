airport_codes = %w[NYC, JAX, MIA, PBI, JFK, LGA, WAS, SEA, DCA]
airport_codes.each do |airport_code|
    Airport.find_or_create_by(code: "#{airport_code}")
end