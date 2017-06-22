require "rails_helper"

RSpec.describe HtRoutesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ht_routes").to route_to("ht_routes#index")
    end

    it "routes to #new" do
      expect(:get => "/ht_routes/new").to route_to("ht_routes#new")
    end

    it "routes to #show" do
      expect(:get => "/ht_routes/1").to route_to("ht_routes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ht_routes/1/edit").to route_to("ht_routes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ht_routes").to route_to("ht_routes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ht_routes/1").to route_to("ht_routes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ht_routes/1").to route_to("ht_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ht_routes/1").to route_to("ht_routes#destroy", :id => "1")
    end

  end
end
