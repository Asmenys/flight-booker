class Booking < ApplicationRecord
    belongs_to :flight
    has_many :passengers, foreign_key: "booking_id"
    def new
        @booking = Booking.new
    end
end
