class CreateProspectiveProperties < ActiveRecord::Migration
  def change
    create_table :prospective_properties do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :price
      t.integer :squareft
      t.integer :rentometer
      t.integer :year_built
      t.integer :interest
      t.float :latitude
      t.float :longitude
      t.references :user
      t.string :source
      t.integer :taxes
      t.string :contact
      t.integer :arv
      t.integer :max_bid
      t.integer :repair_estimate
      t.string :comment
      t.string :style

      t.timestamps
    end
    add_index :prospective_properties, :user_id
  end
end
