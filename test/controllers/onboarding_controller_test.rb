require 'test_helper'

class OnboardingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get onboarding_new_url
    assert_response :success
  end

end
