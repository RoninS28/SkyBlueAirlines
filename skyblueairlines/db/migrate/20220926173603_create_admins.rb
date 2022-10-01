class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :admin_id
      t.string :admin_username
      t.string :admin_password

      t.timestamps
    end
    add_index :admins, :admin_id, unique: true
  end
end
