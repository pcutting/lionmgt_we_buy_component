require 'spec_helper'

describe "sellers/show" do
  before(:each) do
    @seller = assign(:seller, stub_model(Seller,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cell Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zipcode/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Referral/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/When To Sell/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Current On Payments/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Repairs Needed/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
