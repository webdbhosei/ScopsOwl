require "rails_helper"

RSpec.describe HtFavoritesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ht_favorites").to route_to("ht_favorites#index")
    end

    it "routes to #new" do
      expect(:get => "/ht_favorites/new").to route_to("ht_favorites#new")
    end

    it "routes to #show" do
      expect(:get => "/ht_favorites/1").to route_to("ht_favorites#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ht_favorites/1/edit").to route_to("ht_favorites#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ht_favorites").to route_to("ht_favorites#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ht_favorites/1").to route_to("ht_favorites#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ht_favorites/1").to route_to("ht_favorites#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ht_favorites/1").to route_to("ht_favorites#destroy", :id => "1")
    end

  end
end
