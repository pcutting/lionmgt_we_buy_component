require 'spec_helper'

describe "lenders/index" do
  before(:each) do
    assign(:lenders, [
      stub_model(Lender,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :lent_before_on_property => false,
        :how_much_can_you_lend => "How Much Can You Lend",
        :what_geographical_area_of_interest => "What Geographical Area Of Interest",
        :how_fast_can_you_move_funds => "How Fast Can You Move Funds",
        :comment => "MyText"
      ),
      stub_model(Lender,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :lent_before_on_property => false,
        :how_much_can_you_lend => "How Much Can You Lend",
        :what_geographical_area_of_interest => "What Geographical Area Of Interest",
        :how_fast_can_you_move_funds => "How Fast Can You Move Funds",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of lenders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "How Much Can You Lend".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "What Geographical Area Of Interest".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "How Fast Can You Move Funds".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
