class Passenger < ApplicationRecord
    has_many :bookings, foreign_key: "passenger_id"
end
