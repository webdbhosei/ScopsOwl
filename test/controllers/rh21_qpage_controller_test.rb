require 'test_helper'

class Rh21QpageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rh21_qpage_index_url
    assert_response :success
  end

end
