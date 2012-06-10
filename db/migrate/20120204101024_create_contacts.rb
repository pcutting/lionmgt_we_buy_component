class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :username
      t.string :website
      t.string :email

      t.timestamps
    end
    add_index :contacts, :user_id
  end
end
