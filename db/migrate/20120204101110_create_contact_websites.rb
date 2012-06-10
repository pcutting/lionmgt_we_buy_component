class CreateContactWebsites < ActiveRecord::Migration
  def change
    create_table :contact_websites do |t|
      t.references :user
      t.references :contact
      t.string :label
      t.string :website
      t.string :comment

      t.timestamps
    end
    add_index :contact_websites, :user_id
    add_index :contact_websites, :contact_id
  end
end
