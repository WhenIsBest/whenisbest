require 'test_helper'

class CalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get calendar_show_url
    assert_response :success
  end

end
