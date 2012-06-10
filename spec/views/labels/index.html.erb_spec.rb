require 'spec_helper'

describe "labels/index" do
  before(:each) do
    assign(:labels, [
      stub_model(Label,
        :description => "Description",
        :position => 1,
        :type => "Type"
      ),
      stub_model(Label,
        :description => "Description",
        :position => 1,
        :type => "Type"
      )
    ])
  end

  it "renders a list of labels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
