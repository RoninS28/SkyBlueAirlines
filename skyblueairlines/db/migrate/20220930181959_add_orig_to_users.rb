class AddOrigToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :orig, :string
  end
end
