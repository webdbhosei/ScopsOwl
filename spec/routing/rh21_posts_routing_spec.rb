require "rails_helper"

RSpec.describe Rh21PostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rh21_posts").to route_to("rh21_posts#index")
    end

    it "routes to #new" do
      expect(:get => "/rh21_posts/new").to route_to("rh21_posts#new")
    end

    it "routes to #show" do
      expect(:get => "/rh21_posts/1").to route_to("rh21_posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rh21_posts/1/edit").to route_to("rh21_posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rh21_posts").to route_to("rh21_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rh21_posts/1").to route_to("rh21_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rh21_posts/1").to route_to("rh21_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rh21_posts/1").to route_to("rh21_posts#destroy", :id => "1")
    end

  end
end
