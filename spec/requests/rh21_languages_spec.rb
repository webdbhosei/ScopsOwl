require 'rails_helper'

RSpec.describe "Rh21Languages", type: :request do
  describe "GET /rh21_languages" do
    it "works! (now write some real specs)" do
      get rh21_languages_path
      expect(response).to have_http_status(200)
    end
  end
end
