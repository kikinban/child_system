require "test_helper"

class ClassPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_post = class_posts(:one)
  end

  test "should get index" do
    get class_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_class_post_url
    assert_response :success
  end

  test "should create class_post" do
    assert_difference('ClassPost.count') do
      post class_posts_url, params: { class_post: { content: @class_post.content, image_1: @class_post.image_1, image_2: @class_post.image_2, image_3: @class_post.image_3, title: @class_post.title } }
    end

    assert_redirected_to class_post_url(ClassPost.last)
  end

  test "should show class_post" do
    get class_post_url(@class_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_post_url(@class_post)
    assert_response :success
  end

  test "should update class_post" do
    patch class_post_url(@class_post), params: { class_post: { content: @class_post.content, image_1: @class_post.image_1, image_2: @class_post.image_2, image_3: @class_post.image_3, title: @class_post.title } }
    assert_redirected_to class_post_url(@class_post)
  end

  test "should destroy class_post" do
    assert_difference('ClassPost.count', -1) do
      delete class_post_url(@class_post)
    end

    assert_redirected_to class_posts_url
  end
end
