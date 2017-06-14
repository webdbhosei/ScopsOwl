require 'rails_helper'

RSpec.describe "Rh21Roles", type: :request do
  describe "GET /rh21_roles" do
    it "works! (now write some real specs)" do
      get rh21_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
