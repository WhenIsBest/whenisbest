require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get welcome_homepage_url
    assert_response :success
  end

end
