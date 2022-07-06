class RemoveDepartureTimeFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_time, :time
  end
end
