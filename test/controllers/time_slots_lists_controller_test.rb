require 'test_helper'

class TimeSlotsListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_slots_list = time_slots_lists(:one)
  end

  test "should get index" do
    get time_slots_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_time_slots_list_url
    assert_response :success
  end

  test "should create time_slots_list" do
    assert_difference('TimeSlotsList.count') do
      post time_slots_lists_url, params: { time_slots_list: { duration: @time_slots_list.duration, end_date: @time_slots_list.end_date, start_date: @time_slots_list.start_date } }
    end

    assert_redirected_to time_slots_list_url(TimeSlotsList.last)
  end

  test "should show time_slots_list" do
    get time_slots_list_url(@time_slots_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_slots_list_url(@time_slots_list)
    assert_response :success
  end

  test "should update time_slots_list" do
    patch time_slots_list_url(@time_slots_list), params: { time_slots_list: { duration: @time_slots_list.duration, end_date: @time_slots_list.end_date, start_date: @time_slots_list.start_date } }
    assert_redirected_to time_slots_list_url(@time_slots_list)
  end

  test "should destroy time_slots_list" do
    assert_difference('TimeSlotsList.count', -1) do
      delete time_slots_list_url(@time_slots_list)
    end

    assert_redirected_to time_slots_lists_url
  end
end
