class CreateContactAddresses < ActiveRecord::Migration
  def change
    create_table :contact_addresses do |t|
      t.references :user
      t.references :contact
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :label
      t.string :kind

      t.timestamps
    end
    add_index :contact_addresses, :user_id
    add_index :contact_addresses, :contact_id
  end
end
