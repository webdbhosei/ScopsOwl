require 'rails_helper'

RSpec.describe "Rh21Posts", type: :request do
  describe "GET /rh21_posts" do
    it "works! (now write some real specs)" do
      get rh21_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
