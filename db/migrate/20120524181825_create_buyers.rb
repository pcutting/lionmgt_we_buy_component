class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_phone
      t.string :home_phone
      t.text :areas_of_interest
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :bedrooms
      t.string :baths
      t.string :price_range
      t.string :referral
      t.string :when_to_move_in
      t.boolean :need_financing
      t.string :monthly_payment
      t.text :comment

      t.timestamps
    end
  end
end
