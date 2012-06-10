require 'spec_helper'

describe "prospective_properties/new" do
  before(:each) do
    assign(:prospective_property, stub_model(ProspectiveProperty,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
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
      :source => "MyString",
      :taxes => "9.99",
      :contact => "MyString",
      :arv => 1,
      :max => "",
      :repair_estimate => 1,
      :comment => "MyString"
    ).as_new_record)
  end

  it "renders new prospective_property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prospective_properties_path, :method => "post" do
      assert_select "input#prospective_property_address", :name => "prospective_property[address]"
      assert_select "input#prospective_property_city", :name => "prospective_property[city]"
      assert_select "input#prospective_property_state", :name => "prospective_property[state]"
      assert_select "input#prospective_property_zip", :name => "prospective_property[zip]"
      assert_select "input#prospective_property_bedrooms", :name => "prospective_property[bedrooms]"
      assert_select "input#prospective_property_bathrooms", :name => "prospective_property[bathrooms]"
      assert_select "input#prospective_property_price", :name => "prospective_property[price]"
      assert_select "input#prospective_property_squareft", :name => "prospective_property[squareft]"
      assert_select "input#prospective_property_rentometer", :name => "prospective_property[rentometer]"
      assert_select "input#prospective_property_year_built", :name => "prospective_property[year_built]"
      assert_select "input#prospective_property_interest", :name => "prospective_property[interest]"
      assert_select "input#prospective_property_latitude", :name => "prospective_property[latitude]"
      assert_select "input#prospective_property_longitude", :name => "prospective_property[longitude]"
      assert_select "input#prospective_property_user", :name => "prospective_property[user]"
      assert_select "input#prospective_property_source", :name => "prospective_property[source]"
      assert_select "input#prospective_property_taxes", :name => "prospective_property[taxes]"
      assert_select "input#prospective_property_contact", :name => "prospective_property[contact]"
      assert_select "input#prospective_property_arv", :name => "prospective_property[arv]"
      assert_select "input#prospective_property_max", :name => "prospective_property[max]"
      assert_select "input#prospective_property_repair_estimate", :name => "prospective_property[repair_estimate]"
      assert_select "input#prospective_property_comment", :name => "prospective_property[comment]"
    end
  end
end
