require 'rails_helper'

RSpec.describe "GrFileserverContents", type: :request do
  describe "GET /gr_fileserver_contents" do
    it "works! (now write some real specs)" do
      get gr_fileserver_contents_path
      expect(response).to have_http_status(200)
    end
  end
end
