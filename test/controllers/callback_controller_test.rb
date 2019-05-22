require 'test_helper'

class CallbackControllerTest < ActionDispatch::IntegrationTest
  test "should get omniauthAuth" do
    get callback_omniauthAuth_url
    assert_response :success
  end

end
