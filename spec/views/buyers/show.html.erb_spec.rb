require 'spec_helper'

describe "buyers/show" do
  before(:each) do
    @buyer = assign(:buyer, stub_model(Buyer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cell Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zipcode/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bedrooms/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Baths/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Price Range/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Referral/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/When To Move In/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Monthly Payment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
