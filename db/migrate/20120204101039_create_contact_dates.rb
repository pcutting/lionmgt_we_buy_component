class CreateContactDates < ActiveRecord::Migration
  def change
    create_table :contact_dates do |t|
      t.references :user
      t.references :contact
      t.datetime :date
      t.string :label

      t.timestamps
    end
    add_index :contact_dates, :user_id
    add_index :contact_dates, :contact_id
  end
end
