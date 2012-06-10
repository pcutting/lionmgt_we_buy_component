require "spec_helper"

describe LendersController do
  describe "routing" do

    it "routes to #index" do
      get("/lenders").should route_to("lenders#index")
    end

    it "routes to #new" do
      get("/lenders/new").should route_to("lenders#new")
    end

    it "routes to #show" do
      get("/lenders/1").should route_to("lenders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lenders/1/edit").should route_to("lenders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lenders").should route_to("lenders#create")
    end

    it "routes to #update" do
      put("/lenders/1").should route_to("lenders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lenders/1").should route_to("lenders#destroy", :id => "1")
    end

  end
end
