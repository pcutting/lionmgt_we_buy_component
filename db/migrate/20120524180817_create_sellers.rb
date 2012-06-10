class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_phone
      t.string :home_phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :bedrooms
      t.string :baths
      t.string :current_market_value
      t.string :liens_against_property
      t.string :referral
      t.string :when_to_sell
      t.string :current_on_payments
      t.string :repairs_needed
      t.boolean :on_mls, :default => false
      t.string :reator_contact_info
      t.text :comment

      t.timestamps
    end
  end
end
