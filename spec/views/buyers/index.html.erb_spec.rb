require 'spec_helper'

describe "buyers/index" do
  before(:each) do
    assign(:buyers, [
      stub_model(Buyer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :cell_phone => "Cell Phone",
        :home_phone => "Home Phone",
        :areas_of_interest => "MyText",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :bedrooms => "Bedrooms",
        :baths => "Baths",
        :price_range => "Price Range",
        :referral => "Referral",
        :when_to_move_in => "When To Move In",
        :need_financing => false,
        :monthly_payment => "Monthly Payment",
        :comment => "MyText"
      ),
      stub_model(Buyer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :cell_phone => "Cell Phone",
        :home_phone => "Home Phone",
        :areas_of_interest => "MyText",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :bedrooms => "Bedrooms",
        :baths => "Baths",
        :price_range => "Price Range",
        :referral => "Referral",
        :when_to_move_in => "When To Move In",
        :need_financing => false,
        :monthly_payment => "Monthly Payment",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of buyers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bedrooms".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Baths".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Price Range".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Referral".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "When To Move In".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Monthly Payment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
