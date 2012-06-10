require 'spec_helper'

describe "labels/edit" do
  before(:each) do
    @label = assign(:label, stub_model(Label,
      :description => "MyString",
      :position => 1,
      :type => ""
    ))
  end

  it "renders the edit label form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => labels_path(@label), :method => "post" do
      assert_select "input#label_description", :name => "label[description]"
      assert_select "input#label_position", :name => "label[position]"
      assert_select "input#label_type", :name => "label[type]"
    end
  end
end
