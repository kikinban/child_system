require "test_helper"

class StampingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stamping = stampings(:one)
  end

  test "should get index" do
    get stampings_url
    assert_response :success
  end

  test "should get new" do
    get new_stamping_url
    assert_response :success
  end

  test "should create stamping" do
    assert_difference('Stamping.count') do
      post stampings_url, params: { stamping: { end_time: @stamping.end_time, start_time: @stamping.start_time } }
    end

    assert_redirected_to stamping_url(Stamping.last)
  end

  test "should show stamping" do
    get stamping_url(@stamping)
    assert_response :success
  end

  test "should get edit" do
    get edit_stamping_url(@stamping)
    assert_response :success
  end

  test "should update stamping" do
    patch stamping_url(@stamping), params: { stamping: { end_time: @stamping.end_time, start_time: @stamping.start_time } }
    assert_redirected_to stamping_url(@stamping)
  end

  test "should destroy stamping" do
    assert_difference('Stamping.count', -1) do
      delete stamping_url(@stamping)
    end

    assert_redirected_to stampings_url
  end
end
