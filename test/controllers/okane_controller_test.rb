require 'test_helper'

class OkaneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get okane_index_url
    assert_response :success
  end

end
