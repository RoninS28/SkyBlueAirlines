class RemoveStringFromFlights < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :string, :string
  end
end
