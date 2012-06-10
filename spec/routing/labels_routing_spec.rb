require "spec_helper"

describe LabelsController do
  describe "routing" do

    it "routes to #index" do
      get("/labels").should route_to("labels#index")
    end

    it "routes to #new" do
      get("/labels/new").should route_to("labels#new")
    end

    it "routes to #show" do
      get("/labels/1").should route_to("labels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/labels/1/edit").should route_to("labels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/labels").should route_to("labels#create")
    end

    it "routes to #update" do
      put("/labels/1").should route_to("labels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/labels/1").should route_to("labels#destroy", :id => "1")
    end

  end
end
