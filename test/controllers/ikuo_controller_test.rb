require 'test_helper'

class IkuoControllerTest < ActionDispatch::IntegrationTest
  test "should get sample" do
    get ikuo_sample_url
    assert_response :success
  end

end
