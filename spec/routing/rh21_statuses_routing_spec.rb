require "rails_helper"

RSpec.describe Rh21StatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rh21_statuses").to route_to("rh21_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/rh21_statuses/new").to route_to("rh21_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/rh21_statuses/1").to route_to("rh21_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rh21_statuses/1/edit").to route_to("rh21_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rh21_statuses").to route_to("rh21_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rh21_statuses/1").to route_to("rh21_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rh21_statuses/1").to route_to("rh21_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rh21_statuses/1").to route_to("rh21_statuses#destroy", :id => "1")
    end

  end
end
