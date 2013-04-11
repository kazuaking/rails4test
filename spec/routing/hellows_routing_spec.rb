require "spec_helper"

describe HellowsController do
  describe "routing" do

    it "routes to #index" do
      get("/hellows").should route_to("hellows#index")
    end

    it "routes to #new" do
      get("/hellows/new").should route_to("hellows#new")
    end

    it "routes to #show" do
      get("/hellows/1").should route_to("hellows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hellows/1/edit").should route_to("hellows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hellows").should route_to("hellows#create")
    end

    it "routes to #update" do
      put("/hellows/1").should route_to("hellows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hellows/1").should route_to("hellows#destroy", :id => "1")
    end

  end
end
