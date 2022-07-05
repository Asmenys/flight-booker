class AddAirportToFlight < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :arrival_airport_id, :integer, null: false
    add_column :flights, :departure_airport_id, :integer, null: false
  end
end
