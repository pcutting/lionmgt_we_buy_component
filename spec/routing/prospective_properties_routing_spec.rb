require "spec_helper"

describe ProspectivePropertiesController do
  describe "routing" do

    it "routes to #index" do
      get("/prospective_properties").should route_to("prospective_properties#index")
    end

    it "routes to #new" do
      get("/prospective_properties/new").should route_to("prospective_properties#new")
    end

    it "routes to #show" do
      get("/prospective_properties/1").should route_to("prospective_properties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prospective_properties/1/edit").should route_to("prospective_properties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prospective_properties").should route_to("prospective_properties#create")
    end

    it "routes to #update" do
      put("/prospective_properties/1").should route_to("prospective_properties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prospective_properties/1").should route_to("prospective_properties#destroy", :id => "1")
    end

  end
end
