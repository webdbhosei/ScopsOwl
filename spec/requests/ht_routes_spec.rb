require 'rails_helper'

RSpec.describe "HtRoutes", type: :request do
  describe "GET /ht_routes" do
    it "works! (now write some real specs)" do
      get ht_routes_path
      expect(response).to have_http_status(200)
    end
  end
end
