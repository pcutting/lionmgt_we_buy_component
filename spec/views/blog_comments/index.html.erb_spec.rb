require 'spec_helper'

describe "blog_comments/index" do
  before(:each) do
    assign(:blog_comments, [
      stub_model(BlogComment,
        :user => nil,
        :name => "Name",
        :email => "Email",
        :website => "Website",
        :comment => "MyText",
        :parent_comment => 1
      ),
      stub_model(BlogComment,
        :user => nil,
        :name => "Name",
        :email => "Email",
        :website => "Website",
        :comment => "MyText",
        :parent_comment => 1
      )
    ])
  end

  it "renders a list of blog_comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
