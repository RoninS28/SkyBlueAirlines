class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_id
      t.string :credit_card_number
      t.string :address
      t.integer :mobile
      t.string :email

      t.timestamps
    end
    add_index :users, :user_id, unique: true
  end
end
