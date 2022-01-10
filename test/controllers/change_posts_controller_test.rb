require "test_helper"

class ChangePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_post = change_posts(:one)
  end

  test "should get index" do
    get change_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_change_post_url
    assert_response :success
  end

  test "should create change_post" do
    assert_difference('ChangePost.count') do
      post change_posts_url, params: { change_post: { date: @change_post.date, others: @change_post.others, person: @change_post.person, time: @change_post.time } }
    end

    assert_redirected_to change_post_url(ChangePost.last)
  end

  test "should show change_post" do
    get change_post_url(@change_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_post_url(@change_post)
    assert_response :success
  end

  test "should update change_post" do
    patch change_post_url(@change_post), params: { change_post: { date: @change_post.date, others: @change_post.others, person: @change_post.person, time: @change_post.time } }
    assert_redirected_to change_post_url(@change_post)
  end

  test "should destroy change_post" do
    assert_difference('ChangePost.count', -1) do
      delete change_post_url(@change_post)
    end

    assert_redirected_to change_posts_url
  end
end
