require 'spec_helper'

describe "borrowers/show" do
  before(:each) do
    @borrower = assign(:borrower, stub_model(Borrower,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :cell_phone => "Cell Phone",
      :home_phone => "Home Phone",
      :address => "Address",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :market_value => "Market Value",
      :property_address => "MyText",
      :bedrooms => 1,
      :baths => "",
      :current_market_value => "",
      :liens_against_property => "",
      :description => "MyText",
      :under_contract => false,
      :referral => "Referral",
      :repairs_needed => "Repairs Needed",
      :purchase_price => "",
      :exit_strategy => "MyText",
      :loan_type_requesting => "Loan Type Requesting",
      :gross_monthly_income => "Gross Monthly Income",
      :loan_amount_requested => "",
      :length_of_term_anticipated => "Length Of Term Anticipated",
      :property_info => "Property Info",
      :loan_summary_overview => "MyText",
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
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zip/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Market Value/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Referral/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Repairs Needed/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Loan Type Requesting/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gross Monthly Income/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Length Of Term Anticipated/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Property Info/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
