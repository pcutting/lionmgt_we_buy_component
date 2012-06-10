class CreateContactNotes < ActiveRecord::Migration
  def change
    create_table :contact_notes do |t|
      t.references :user
      t.references :contact
      t.string :note
      t.datetime :reminder
      t.string :label

      t.timestamps
    end
    add_index :contact_notes, :user_id
    add_index :contact_notes, :contact_id
  end
end
