require "spec_helper"

describe CodeSamplesController do
  describe "routing" do

    it "routes to #index" do
      get("/code_samples").should route_to("code_samples#index")
    end

    it "routes to #new" do
      get("/code_samples/new").should route_to("code_samples#new")
    end

    it "routes to #show" do
      get("/code_samples/1").should route_to("code_samples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/code_samples/1/edit").should route_to("code_samples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/code_samples").should route_to("code_samples#create")
    end

    it "routes to #update" do
      put("/code_samples/1").should route_to("code_samples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/code_samples/1").should route_to("code_samples#destroy", :id => "1")
    end

  end
end
