require 'spec_helper'

describe "blog_comments/edit" do
  before(:each) do
    @blog_comment = assign(:blog_comment, stub_model(BlogComment,
      :user => nil,
      :name => "MyString",
      :email => "MyString",
      :website => "MyString",
      :comment => "MyText",
      :parent_comment => 1
    ))
  end

  it "renders the edit blog_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_comments_path(@blog_comment), :method => "post" do
      assert_select "input#blog_comment_user", :name => "blog_comment[user]"
      assert_select "input#blog_comment_name", :name => "blog_comment[name]"
      assert_select "input#blog_comment_email", :name => "blog_comment[email]"
      assert_select "input#blog_comment_website", :name => "blog_comment[website]"
      assert_select "textarea#blog_comment_comment", :name => "blog_comment[comment]"
      assert_select "input#blog_comment_parent_comment", :name => "blog_comment[parent_comment]"
    end
  end
end
