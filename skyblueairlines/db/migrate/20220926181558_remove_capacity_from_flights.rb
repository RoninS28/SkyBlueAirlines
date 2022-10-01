class RemoveCapacityFromFlights < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :capacity, :string
  end
end
