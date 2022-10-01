class AddCapacityToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :capacity, :integer
  end
end
