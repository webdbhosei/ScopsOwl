require 'test_helper'

class EbaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eba_index_url
    assert_response :success
  end

end
