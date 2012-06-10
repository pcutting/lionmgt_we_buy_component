class BlogsController < ApplicationController
  # GET /blogs
  # GET /blogs.json
  
    before_filter :authenticate_user!, :only => ["new","create", "user"]
  def index
    @blogs = Blog.sorted

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogs }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find(params[:id])
    if current_user
      @comment = current_user.blog_comments.new(:email => current_user.email, :name => current_user.name) 
    else 
       @comment = BlogComment.new
    end
    @comments = @blog.blog_comments.find(:all, :conditions => ["comment_id is NULL"])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blogs/new
  # GET /blogs/new.json
  def new
    @blog = current_user.blogs.new()

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blogs/1/edit
  def edit
    @blog = Blog.find(params[:id])
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = current_user.blogs.new(params[:blog])

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render json: @blog, status: :created, location: @blog }
      else
        format.html { render action: "new" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogs/1
  # PUT /blogs/1.json
  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url }
      format.json { head :ok }
    end
  end
  
  def comment
    @blog = Blog.find(params[:id])
    @comment = @blog.blog_comments.new(params[:blog_comment])
    
    if @comment.save 
    
      flash[:notice] = "You comment has been added"
      redirect_to blog_path(@blog)
    else   
    
      #raise @comment.to_yaml
      flash[:notice] = "There were errors in your form"
      render action: "show"
    end
    #raise @comment.to_yaml
  end
  
  def reply
    @blog = Blog.find(params[:id])
    @comment = @blog.blog_comments.new(params[:blog_comment])
    
    if @comment.save 
    
      flash[:notice] = "You comment has been added"
      redirect_to blog_path(@blog)
    else   
    
      #raise @comment.to_yaml
      flash[:notice] = "There were errors in your form"
      render action: "show"
    end
    #raise @comment.to_yaml
  end
  
  
  
end
