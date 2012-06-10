require 'spec_helper'

describe "blogs/edit" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :title => "MyString",
      :category => "MyString",
      :topic => "MyString",
      :author => "MyString",
      :user => "",
      :content => "MyText",
      :comment_count => 1
    ))
  end

  it "renders the edit blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path(@blog), :method => "post" do
      assert_select "input#blog_title", :name => "blog[title]"
      assert_select "input#blog_category", :name => "blog[category]"
      assert_select "input#blog_topic", :name => "blog[topic]"
      assert_select "input#blog_author", :name => "blog[author]"
      assert_select "input#blog_user", :name => "blog[user]"
      assert_select "textarea#blog_content", :name => "blog[content]"
      assert_select "input#blog_comment_count", :name => "blog[comment_count]"
    end
  end
end
