require "rails_helper"

RSpec.describe Rh21ThreadsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rh21_threads").to route_to("rh21_threads#index")
    end

    it "routes to #new" do
      expect(:get => "/rh21_threads/new").to route_to("rh21_threads#new")
    end

    it "routes to #show" do
      expect(:get => "/rh21_threads/1").to route_to("rh21_threads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rh21_threads/1/edit").to route_to("rh21_threads#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rh21_threads").to route_to("rh21_threads#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rh21_threads/1").to route_to("rh21_threads#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rh21_threads/1").to route_to("rh21_threads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rh21_threads/1").to route_to("rh21_threads#destroy", :id => "1")
    end

  end
end
