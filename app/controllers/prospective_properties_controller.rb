class ProspectivePropertiesController < ApplicationController
  # GET /prospective_properties
  # GET /prospective_properties.json
  def index
    @prospective_properties = ProspectiveProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prospective_properties }
    end
  end

  # GET /prospective_properties/1
  # GET /prospective_properties/1.json
  def show
    @prospective_property = ProspectiveProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prospective_property }
    end
  end

  # GET /prospective_properties/new
  # GET /prospective_properties/new.json
  def new
    @user= current_user
    @user.prospective_properties.build
   
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prospective_property }
    end
  end

  # GET /prospective_properties/1/edit
  def edit
    @prospective_property = ProspectiveProperty.find(params[:id])
  end

  # POST /prospective_properties
  # POST /prospective_properties.json
  def create
    @user = ProspectiveProperty.new(params[:prospective_property])

    respond_to do |format|
      if @prospective_property.save
        format.html { redirect_to @prospective_property, notice: 'Prospective property was successfully created.' }
        format.json { render json: @prospective_property, status: :created, location: @prospective_property }
      else
        format.html { render action: "new" }
        format.json { render json: @prospective_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prospective_properties/1
  # PUT /prospective_properties/1.json
  def update
    @prospective_property = ProspectiveProperty.find(params[:id])
    #@user = ProspectiveProperty.new(params[:prospective_property])

    respond_to do |format|
      if @prospective_property.update_attributes(params[:prospective_property])
        format.html { redirect_to @prospective_property, notice: 'Prospective property was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prospective_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospective_properties/1
  # DELETE /prospective_properties/1.json
  def destroy
    @prospective_property = ProspectiveProperty.find(params[:id])
    @prospective_property.destroy

    respond_to do |format|
      format.html { redirect_to prospective_properties_url }
      format.json { head :ok }
    end
  end
  
  def multiple_properties
    
    @user = current_user

    respond_to do |format|
      if @user.prospective_properties.update_attributes(params[:prospective_properties])
        format.html { redirect_to prospective_properties_url, notice: 'Properties were successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
    
    
  end
  
end
