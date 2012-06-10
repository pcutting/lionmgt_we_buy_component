require 'spec_helper'

describe "prospective_properties/index" do
  before(:each) do
    assign(:prospective_properties, [
      stub_model(ProspectiveProperty,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :bedrooms => 1,
        :bathrooms => 1.5,
        :price => 1.5,
        :squareft => 1,
        :rentometer => 1,
        :year_built => 1,
        :interest => 1,
        :latitude => 1.5,
        :longitude => 1.5,
        :user => nil,
        :source => "Source",
        :taxes => "9.99",
        :contact => "Contact",
        :arv => 1,
        :max => "",
        :repair_estimate => 1,
        :comment => "Comment"
      ),
      stub_model(ProspectiveProperty,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :bedrooms => 1,
        :bathrooms => 1.5,
        :price => 1.5,
        :squareft => 1,
        :rentometer => 1,
        :year_built => 1,
        :interest => 1,
        :latitude => 1.5,
        :longitude => 1.5,
        :user => nil,
        :source => "Source",
        :taxes => "9.99",
        :contact => "Contact",
        :arv => 1,
        :max => "",
        :repair_estimate => 1,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of prospective_properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
