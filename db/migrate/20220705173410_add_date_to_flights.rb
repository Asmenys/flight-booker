class AddDateToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure_date, :date
  end
end
