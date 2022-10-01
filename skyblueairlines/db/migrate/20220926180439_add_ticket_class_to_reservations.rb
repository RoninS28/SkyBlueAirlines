class AddTicketClassToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :ticket_class, :string
  end
end
