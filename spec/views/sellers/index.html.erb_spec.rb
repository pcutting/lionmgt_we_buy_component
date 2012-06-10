require 'spec_helper'

describe "sellers/index" do
  before(:each) do
    assign(:sellers, [
      stub_model(Seller,
        :name => "Name",
        :email => "Email",
        :cell_phone => "Cell Phone",
        :home_phone => "Home Phone",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :bedrooms => 1,
        :baths => "",
        :current_market_value => "",
        :liens_against_property => "",
        :referral => "Referral",
        :when_to_sell => "When To Sell",
        :current_on_payments => "Current On Payments",
        :repairs_needed => "Repairs Needed",
        :comment => "MyText"
      ),
      stub_model(Seller,
        :name => "Name",
        :email => "Email",
        :cell_phone => "Cell Phone",
        :home_phone => "Home Phone",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :bedrooms => 1,
        :baths => "",
        :current_market_value => "",
        :liens_against_property => "",
        :referral => "Referral",
        :when_to_sell => "When To Sell",
        :current_on_payments => "Current On Payments",
        :repairs_needed => "Repairs Needed",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of sellers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Referral".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "When To Sell".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Current On Payments".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Repairs Needed".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
