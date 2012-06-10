require 'spec_helper'

describe "lenders/new" do
  before(:each) do
    assign(:lender, stub_model(Lender,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :lent_before_on_property => false,
      :how_much_can_you_lend => "MyString",
      :what_geographical_area_of_interest => "MyString",
      :how_fast_can_you_move_funds => "MyString",
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new lender form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lenders_path, :method => "post" do
      assert_select "input#lender_first_name", :name => "lender[first_name]"
      assert_select "input#lender_last_name", :name => "lender[last_name]"
      assert_select "input#lender_email", :name => "lender[email]"
      assert_select "input#lender_phone", :name => "lender[phone]"
      assert_select "input#lender_lent_before_on_property", :name => "lender[lent_before_on_property]"
      assert_select "input#lender_how_much_can_you_lend", :name => "lender[how_much_can_you_lend]"
      assert_select "input#lender_what_geographical_area_of_interest", :name => "lender[what_geographical_area_of_interest]"
      assert_select "input#lender_how_fast_can_you_move_funds", :name => "lender[how_fast_can_you_move_funds]"
      assert_select "textarea#lender_comment", :name => "lender[comment]"
    end
  end
end
