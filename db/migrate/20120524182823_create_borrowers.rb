class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_phone
      t.string :home_phone
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      #t.string :market_value
      t.text :property_address
      t.integer :bedrooms
      t.string :baths
      t.string :current_market_value
      t.string :liens_against_property
      t.text :description
      t.boolean :under_contract
      t.string :referral
      t.datetime :closing_date
      t.string :repairs_needed
      t.string :purchase_price
      t.text :exit_strategy
      t.string :loan_type_requesting
      t.string :gross_monthly_income
      t.string :loan_amount_requested
      t.string :length_of_term_anticipated
      t.string :property_info
      t.text :loan_summary_overview
      t.text :comment

      t.timestamps
    end
  end
end
