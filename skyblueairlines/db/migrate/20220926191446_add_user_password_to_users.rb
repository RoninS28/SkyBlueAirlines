class AddUserPasswordToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_password, :string
  end
end
