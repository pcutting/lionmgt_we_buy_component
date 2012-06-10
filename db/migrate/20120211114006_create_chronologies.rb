class CreateChronologies < ActiveRecord::Migration
  def change
    create_table :chronologies do |t|
      t.references :prospective_property
      t.text :notes

      t.timestamps
    end
    add_index :chronologies, :prospective_property_id
  end
end
