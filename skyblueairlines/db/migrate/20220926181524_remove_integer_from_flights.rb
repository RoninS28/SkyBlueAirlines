class RemoveIntegerFromFlights < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :integer, :string
  end
end
