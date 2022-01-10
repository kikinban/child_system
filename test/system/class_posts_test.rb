require "application_system_test_case"

class ClassPostsTest < ApplicationSystemTestCase
  setup do
    @class_post = class_posts(:one)
  end

  test "visiting the index" do
    visit class_posts_url
    assert_selector "h1", text: "Class Posts"
  end

  test "creating a Class post" do
    visit class_posts_url
    click_on "New Class Post"

    fill_in "Content", with: @class_post.content
    fill_in "Image 1", with: @class_post.image_1
    fill_in "Image 2", with: @class_post.image_2
    fill_in "Image 3", with: @class_post.image_3
    fill_in "Title", with: @class_post.title
    click_on "Create Class post"

    assert_text "Class post was successfully created"
    click_on "Back"
  end

  test "updating a Class post" do
    visit class_posts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @class_post.content
    fill_in "Image 1", with: @class_post.image_1
    fill_in "Image 2", with: @class_post.image_2
    fill_in "Image 3", with: @class_post.image_3
    fill_in "Title", with: @class_post.title
    click_on "Update Class post"

    assert_text "Class post was successfully updated"
    click_on "Back"
  end

  test "destroying a Class post" do
    visit class_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class post was successfully destroyed"
  end
end
