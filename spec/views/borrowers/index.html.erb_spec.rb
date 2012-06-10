require 'spec_helper'

describe "borrowers/index" do
  before(:each) do
    assign(:borrowers, [
      stub_model(Borrower,
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
      ),
      stub_model(Borrower,
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
      )
    ])
  end

  it "renders a list of borrowers" do
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
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Market Value".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Referral".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Repairs Needed".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Loan Type Requesting".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gross Monthly Income".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Length Of Term Anticipated".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Property Info".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
