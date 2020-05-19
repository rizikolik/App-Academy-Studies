require 'test_helper'

class SillyControllerTest < ActionDispatch::IntegrationTest
  test "should get fun" do
    get silly_fun_url
    assert_response :success
  end

end
