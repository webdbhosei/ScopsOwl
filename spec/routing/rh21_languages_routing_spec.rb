require "rails_helper"

RSpec.describe Rh21LanguagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rh21_languages").to route_to("rh21_languages#index")
    end

    it "routes to #new" do
      expect(:get => "/rh21_languages/new").to route_to("rh21_languages#new")
    end

    it "routes to #show" do
      expect(:get => "/rh21_languages/1").to route_to("rh21_languages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rh21_languages/1/edit").to route_to("rh21_languages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rh21_languages").to route_to("rh21_languages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rh21_languages/1").to route_to("rh21_languages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rh21_languages/1").to route_to("rh21_languages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rh21_languages/1").to route_to("rh21_languages#destroy", :id => "1")
    end

  end
end
