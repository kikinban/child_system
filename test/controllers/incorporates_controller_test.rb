require "test_helper"

class IncorporatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incorporate = incorporates(:one)
  end

  test "should get index" do
    get incorporates_url
    assert_response :success
  end

  test "should get new" do
    get new_incorporate_url
    assert_response :success
  end

  test "should create incorporate" do
    assert_difference('Incorporate.count') do
      post incorporates_url, params: { incorporate: { content: @incorporate.content, date: @incorporate.date, image_1: @incorporate.image_1, image_2: @incorporate.image_2, image_3: @incorporate.image_3, title: @incorporate.title } }
    end

    assert_redirected_to incorporate_url(Incorporate.last)
  end

  test "should show incorporate" do
    get incorporate_url(@incorporate)
    assert_response :success
  end

  test "should get edit" do
    get edit_incorporate_url(@incorporate)
    assert_response :success
  end

  test "should update incorporate" do
    patch incorporate_url(@incorporate), params: { incorporate: { content: @incorporate.content, date: @incorporate.date, image_1: @incorporate.image_1, image_2: @incorporate.image_2, image_3: @incorporate.image_3, title: @incorporate.title } }
    assert_redirected_to incorporate_url(@incorporate)
  end

  test "should destroy incorporate" do
    assert_difference('Incorporate.count', -1) do
      delete incorporate_url(@incorporate)
    end

    assert_redirected_to incorporates_url
  end
end
