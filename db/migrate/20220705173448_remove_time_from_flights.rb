class RemoveTimeFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_time, :date
  end
end
