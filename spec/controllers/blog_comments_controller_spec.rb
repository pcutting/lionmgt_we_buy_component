require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BlogCommentsController do

  # This should return the minimal set of attributes required to create a valid
  # BlogComment. As you add validations to BlogComment, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BlogCommentsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all blog_comments as @blog_comments" do
      blog_comment = BlogComment.create! valid_attributes
      get :index, {}, valid_session
      assigns(:blog_comments).should eq([blog_comment])
    end
  end

  describe "GET show" do
    it "assigns the requested blog_comment as @blog_comment" do
      blog_comment = BlogComment.create! valid_attributes
      get :show, {:id => blog_comment.to_param}, valid_session
      assigns(:blog_comment).should eq(blog_comment)
    end
  end

  describe "GET new" do
    it "assigns a new blog_comment as @blog_comment" do
      get :new, {}, valid_session
      assigns(:blog_comment).should be_a_new(BlogComment)
    end
  end

  describe "GET edit" do
    it "assigns the requested blog_comment as @blog_comment" do
      blog_comment = BlogComment.create! valid_attributes
      get :edit, {:id => blog_comment.to_param}, valid_session
      assigns(:blog_comment).should eq(blog_comment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BlogComment" do
        expect {
          post :create, {:blog_comment => valid_attributes}, valid_session
        }.to change(BlogComment, :count).by(1)
      end

      it "assigns a newly created blog_comment as @blog_comment" do
        post :create, {:blog_comment => valid_attributes}, valid_session
        assigns(:blog_comment).should be_a(BlogComment)
        assigns(:blog_comment).should be_persisted
      end

      it "redirects to the created blog_comment" do
        post :create, {:blog_comment => valid_attributes}, valid_session
        response.should redirect_to(BlogComment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved blog_comment as @blog_comment" do
        # Trigger the behavior that occurs when invalid params are submitted
        BlogComment.any_instance.stub(:save).and_return(false)
        post :create, {:blog_comment => {}}, valid_session
        assigns(:blog_comment).should be_a_new(BlogComment)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BlogComment.any_instance.stub(:save).and_return(false)
        post :create, {:blog_comment => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested blog_comment" do
        blog_comment = BlogComment.create! valid_attributes
        # Assuming there are no other blog_comments in the database, this
        # specifies that the BlogComment created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BlogComment.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => blog_comment.to_param, :blog_comment => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested blog_comment as @blog_comment" do
        blog_comment = BlogComment.create! valid_attributes
        put :update, {:id => blog_comment.to_param, :blog_comment => valid_attributes}, valid_session
        assigns(:blog_comment).should eq(blog_comment)
      end

      it "redirects to the blog_comment" do
        blog_comment = BlogComment.create! valid_attributes
        put :update, {:id => blog_comment.to_param, :blog_comment => valid_attributes}, valid_session
        response.should redirect_to(blog_comment)
      end
    end

    describe "with invalid params" do
      it "assigns the blog_comment as @blog_comment" do
        blog_comment = BlogComment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BlogComment.any_instance.stub(:save).and_return(false)
        put :update, {:id => blog_comment.to_param, :blog_comment => {}}, valid_session
        assigns(:blog_comment).should eq(blog_comment)
      end

      it "re-renders the 'edit' template" do
        blog_comment = BlogComment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BlogComment.any_instance.stub(:save).and_return(false)
        put :update, {:id => blog_comment.to_param, :blog_comment => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested blog_comment" do
      blog_comment = BlogComment.create! valid_attributes
      expect {
        delete :destroy, {:id => blog_comment.to_param}, valid_session
      }.to change(BlogComment, :count).by(-1)
    end

    it "redirects to the blog_comments list" do
      blog_comment = BlogComment.create! valid_attributes
      delete :destroy, {:id => blog_comment.to_param}, valid_session
      response.should redirect_to(blog_comments_url)
    end
  end

end
