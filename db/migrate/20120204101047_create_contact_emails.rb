class CreateContactEmails < ActiveRecord::Migration
  def change
    create_table :contact_emails do |t|
      t.references :user
      t.references :contact
      t.string :email
      t.string :label
      t.boolean :primary

      t.timestamps
    end
    add_index :contact_emails, :user_id
    add_index :contact_emails, :contact_id
  end
end
