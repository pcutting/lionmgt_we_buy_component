require 'spec_helper'

describe "lenders/show" do
  before(:each) do
    @lender = assign(:lender, stub_model(Lender,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :lent_before_on_property => false,
      :how_much_can_you_lend => "How Much Can You Lend",
      :what_geographical_area_of_interest => "What Geographical Area Of Interest",
      :how_fast_can_you_move_funds => "How Fast Can You Move Funds",
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
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/How Much Can You Lend/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/What Geographical Area Of Interest/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/How Fast Can You Move Funds/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
