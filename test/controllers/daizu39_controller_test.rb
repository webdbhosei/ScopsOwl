require 'test_helper'

class Daizu39ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daizu39_index_url
    assert_response :success
  end

end
