class Passenger < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    has_many :bookings, foreign_key: "passenger_id"
end
