class CreateContactPhones < ActiveRecord::Migration
  def change
    create_table :contact_phones do |t|
      t.references :user
      t.references :contact
      t.string :phone
      t.string :ext
      t.string :country
      t.string :country_code
      t.string :code
      t.string :label

      t.timestamps
    end
    add_index :contact_phones, :user_id
    add_index :contact_phones, :contact_id
  end
end
