require 'spec_helper'

describe "borrowers/edit" do
  before(:each) do
    @borrower = assign(:borrower, stub_model(Borrower,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :cell_phone => "MyString",
      :home_phone => "MyString",
      :address => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :market_value => "MyString",
      :property_address => "MyText",
      :bedrooms => 1,
      :baths => "",
      :current_market_value => "",
      :liens_against_property => "",
      :description => "MyText",
      :under_contract => false,
      :referral => "MyString",
      :repairs_needed => "MyString",
      :purchase_price => "",
      :exit_strategy => "MyText",
      :loan_type_requesting => "MyString",
      :gross_monthly_income => "MyString",
      :loan_amount_requested => "",
      :length_of_term_anticipated => "MyString",
      :property_info => "MyString",
      :loan_summary_overview => "MyText",
      :comment => "MyText"
    ))
  end

  it "renders the edit borrower form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => borrowers_path(@borrower), :method => "post" do
      assert_select "input#borrower_first_name", :name => "borrower[first_name]"
      assert_select "input#borrower_last_name", :name => "borrower[last_name]"
      assert_select "input#borrower_email", :name => "borrower[email]"
      assert_select "input#borrower_cell_phone", :name => "borrower[cell_phone]"
      assert_select "input#borrower_home_phone", :name => "borrower[home_phone]"
      assert_select "input#borrower_address", :name => "borrower[address]"
      assert_select "input#borrower_address2", :name => "borrower[address2]"
      assert_select "input#borrower_city", :name => "borrower[city]"
      assert_select "input#borrower_state", :name => "borrower[state]"
      assert_select "input#borrower_zip", :name => "borrower[zip]"
      assert_select "input#borrower_market_value", :name => "borrower[market_value]"
      assert_select "textarea#borrower_property_address", :name => "borrower[property_address]"
      assert_select "input#borrower_bedrooms", :name => "borrower[bedrooms]"
      assert_select "input#borrower_baths", :name => "borrower[baths]"
      assert_select "input#borrower_current_market_value", :name => "borrower[current_market_value]"
      assert_select "input#borrower_liens_against_property", :name => "borrower[liens_against_property]"
      assert_select "textarea#borrower_description", :name => "borrower[description]"
      assert_select "input#borrower_under_contract", :name => "borrower[under_contract]"
      assert_select "input#borrower_referral", :name => "borrower[referral]"
      assert_select "input#borrower_repairs_needed", :name => "borrower[repairs_needed]"
      assert_select "input#borrower_purchase_price", :name => "borrower[purchase_price]"
      assert_select "textarea#borrower_exit_strategy", :name => "borrower[exit_strategy]"
      assert_select "input#borrower_loan_type_requesting", :name => "borrower[loan_type_requesting]"
      assert_select "input#borrower_gross_monthly_income", :name => "borrower[gross_monthly_income]"
      assert_select "input#borrower_loan_amount_requested", :name => "borrower[loan_amount_requested]"
      assert_select "input#borrower_length_of_term_anticipated", :name => "borrower[length_of_term_anticipated]"
      assert_select "input#borrower_property_info", :name => "borrower[property_info]"
      assert_select "textarea#borrower_loan_summary_overview", :name => "borrower[loan_summary_overview]"
      assert_select "textarea#borrower_comment", :name => "borrower[comment]"
    end
  end
end
