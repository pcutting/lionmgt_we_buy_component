require 'spec_helper'

describe "sellers/new" do
  before(:each) do
    assign(:seller, stub_model(Seller,
      :name => "MyString",
      :email => "MyString",
      :cell_phone => "MyString",
      :home_phone => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :bedrooms => 1,
      :baths => "",
      :current_market_value => "",
      :liens_against_property => "",
      :referral => "MyString",
      :when_to_sell => "MyString",
      :current_on_payments => "MyString",
      :repairs_needed => "MyString",
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new seller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sellers_path, :method => "post" do
      assert_select "input#seller_name", :name => "seller[name]"
      assert_select "input#seller_email", :name => "seller[email]"
      assert_select "input#seller_cell_phone", :name => "seller[cell_phone]"
      assert_select "input#seller_home_phone", :name => "seller[home_phone]"
      assert_select "input#seller_address", :name => "seller[address]"
      assert_select "input#seller_city", :name => "seller[city]"
      assert_select "input#seller_state", :name => "seller[state]"
      assert_select "input#seller_zipcode", :name => "seller[zipcode]"
      assert_select "input#seller_bedrooms", :name => "seller[bedrooms]"
      assert_select "input#seller_baths", :name => "seller[baths]"
      assert_select "input#seller_current_market_value", :name => "seller[current_market_value]"
      assert_select "input#seller_liens_against_property", :name => "seller[liens_against_property]"
      assert_select "input#seller_referral", :name => "seller[referral]"
      assert_select "input#seller_when_to_sell", :name => "seller[when_to_sell]"
      assert_select "input#seller_current_on_payments", :name => "seller[current_on_payments]"
      assert_select "input#seller_repairs_needed", :name => "seller[repairs_needed]"
      assert_select "textarea#seller_comment", :name => "seller[comment]"
    end
  end
end
