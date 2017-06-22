require "rails_helper"

RSpec.describe GrFileserverContentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gr_fileserver_contents").to route_to("gr_fileserver_contents#index")
    end

    it "routes to #new" do
      expect(:get => "/gr_fileserver_contents/new").to route_to("gr_fileserver_contents#new")
    end

    it "routes to #show" do
      expect(:get => "/gr_fileserver_contents/1").to route_to("gr_fileserver_contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gr_fileserver_contents/1/edit").to route_to("gr_fileserver_contents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gr_fileserver_contents").to route_to("gr_fileserver_contents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gr_fileserver_contents/1").to route_to("gr_fileserver_contents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gr_fileserver_contents/1").to route_to("gr_fileserver_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gr_fileserver_contents/1").to route_to("gr_fileserver_contents#destroy", :id => "1")
    end

  end
end
