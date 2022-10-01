class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :name
      t.string :flight_id
      t.string :manufacturer
      t.string :originCity
      t.string :string
      t.string :destinationCity
      t.string :capacity
      t.string :integer
      t.string :status
      t.string :class

      t.timestamps
    end
    add_index :flights, :flight_id, unique: true
  end
end
