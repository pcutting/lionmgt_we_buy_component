class Seller < ActiveRecord::Base
  # zipcode, bedrooms, baths, current_market_value, liens_against_property, referral, when_to_sell, current_on_payments, repairs_needed

  validates_presence_of :first_name, :last_name, :email, :address, :city, :state, :cell_phone

end
