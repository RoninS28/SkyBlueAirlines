class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :no_of_passengers
      t.string :confirmation_number
      t.string :amenities
      t.decimal :cost

      t.timestamps
    end
    add_index :reservations, :confirmation_number, unique: true
  end
end
