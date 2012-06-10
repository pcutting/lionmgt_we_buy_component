require 'spec_helper'

describe "contacts/new.html.erb" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :user => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :nickname => "MyString",
      :username => "MyString",
      :website => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_user", :name => "contact[user]"
      assert_select "input#contact_first_name", :name => "contact[first_name]"
      assert_select "input#contact_last_name", :name => "contact[last_name]"
      assert_select "input#contact_nickname", :name => "contact[nickname]"
      assert_select "input#contact_username", :name => "contact[username]"
      assert_select "input#contact_website", :name => "contact[website]"
      assert_select "input#contact_email", :name => "contact[email]"
    end
  end
end
