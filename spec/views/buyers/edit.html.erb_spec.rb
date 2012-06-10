require 'spec_helper'

describe "buyers/edit" do
  before(:each) do
    @buyer = assign(:buyer, stub_model(Buyer,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :cell_phone => "MyString",
      :home_phone => "MyString",
      :areas_of_interest => "MyText",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :bedrooms => "MyString",
      :baths => "MyString",
      :price_range => "MyString",
      :referral => "MyString",
      :when_to_move_in => "MyString",
      :need_financing => false,
      :monthly_payment => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders the edit buyer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buyers_path(@buyer), :method => "post" do
      assert_select "input#buyer_first_name", :name => "buyer[first_name]"
      assert_select "input#buyer_last_name", :name => "buyer[last_name]"
      assert_select "input#buyer_email", :name => "buyer[email]"
      assert_select "input#buyer_cell_phone", :name => "buyer[cell_phone]"
      assert_select "input#buyer_home_phone", :name => "buyer[home_phone]"
      assert_select "textarea#buyer_areas_of_interest", :name => "buyer[areas_of_interest]"
      assert_select "input#buyer_city", :name => "buyer[city]"
      assert_select "input#buyer_state", :name => "buyer[state]"
      assert_select "input#buyer_zipcode", :name => "buyer[zipcode]"
      assert_select "input#buyer_bedrooms", :name => "buyer[bedrooms]"
      assert_select "input#buyer_baths", :name => "buyer[baths]"
      assert_select "input#buyer_price_range", :name => "buyer[price_range]"
      assert_select "input#buyer_referral", :name => "buyer[referral]"
      assert_select "input#buyer_when_to_move_in", :name => "buyer[when_to_move_in]"
      assert_select "input#buyer_need_financing", :name => "buyer[need_financing]"
      assert_select "input#buyer_monthly_payment", :name => "buyer[monthly_payment]"
      assert_select "textarea#buyer_comment", :name => "buyer[comment]"
    end
  end
end
