require "rails_helper"

RSpec.describe Rh21RolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rh21_roles").to route_to("rh21_roles#index")
    end

    it "routes to #new" do
      expect(:get => "/rh21_roles/new").to route_to("rh21_roles#new")
    end

    it "routes to #show" do
      expect(:get => "/rh21_roles/1").to route_to("rh21_roles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rh21_roles/1/edit").to route_to("rh21_roles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rh21_roles").to route_to("rh21_roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rh21_roles/1").to route_to("rh21_roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rh21_roles/1").to route_to("rh21_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rh21_roles/1").to route_to("rh21_roles#destroy", :id => "1")
    end

  end
end
