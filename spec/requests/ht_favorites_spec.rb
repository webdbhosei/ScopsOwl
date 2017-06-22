require 'rails_helper'

RSpec.describe "HtFavorites", type: :request do
  describe "GET /ht_favorites" do
    it "works! (now write some real specs)" do
      get ht_favorites_path
      expect(response).to have_http_status(200)
    end
  end
end
