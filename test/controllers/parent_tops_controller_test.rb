require "test_helper"

class ParentTopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_top = parent_tops(:one)
  end

  test "should get index" do
    get parent_tops_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_top_url
    assert_response :success
  end

  test "should create parent_top" do
    assert_difference('ParentTop.count') do
      post parent_tops_url, params: { parent_top: {  } }
    end

    assert_redirected_to parent_top_url(ParentTop.last)
  end

  test "should show parent_top" do
    get parent_top_url(@parent_top)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_top_url(@parent_top)
    assert_response :success
  end

  test "should update parent_top" do
    patch parent_top_url(@parent_top), params: { parent_top: {  } }
    assert_redirected_to parent_top_url(@parent_top)
  end

  test "should destroy parent_top" do
    assert_difference('ParentTop.count', -1) do
      delete parent_top_url(@parent_top)
    end

    assert_redirected_to parent_tops_url
  end
end
