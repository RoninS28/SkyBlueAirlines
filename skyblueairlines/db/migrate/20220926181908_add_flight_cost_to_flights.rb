class AddFlightCostToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :flight_cost, :decimal
  end
end
