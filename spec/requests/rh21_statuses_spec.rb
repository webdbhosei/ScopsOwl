require 'rails_helper'

RSpec.describe "Rh21Statuses", type: :request do
  describe "GET /rh21_statuses" do
    it "works! (now write some real specs)" do
      get rh21_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
