require 'test_helper'

class GuteriseFileserverControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guterise_fileserver_index_url
    assert_response :success
  end

end
