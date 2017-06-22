require 'rails_helper'

RSpec.describe "Rh21Threads", type: :request do
  describe "GET /rh21_threads" do
    it "works! (now write some real specs)" do
      get rh21_threads_path
      expect(response).to have_http_status(200)
    end
  end
end
