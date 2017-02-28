require 'test_helper'

class StaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get statics_new_url
    assert_response :success
  end

end
