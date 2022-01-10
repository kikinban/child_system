require "application_system_test_case"

class ChangePostsTest < ApplicationSystemTestCase
  setup do
    @change_post = change_posts(:one)
  end

  test "visiting the index" do
    visit change_posts_url
    assert_selector "h1", text: "Change Posts"
  end

  test "creating a Change post" do
    visit change_posts_url
    click_on "New Change Post"

    fill_in "Date", with: @change_post.date
    fill_in "Others", with: @change_post.others
    fill_in "Person", with: @change_post.person
    fill_in "Time", with: @change_post.time
    click_on "Create Change post"

    assert_text "Change post was successfully created"
    click_on "Back"
  end

  test "updating a Change post" do
    visit change_posts_url
    click_on "Edit", match: :first

    fill_in "Date", with: @change_post.date
    fill_in "Others", with: @change_post.others
    fill_in "Person", with: @change_post.person
    fill_in "Time", with: @change_post.time
    click_on "Update Change post"

    assert_text "Change post was successfully updated"
    click_on "Back"
  end

  test "destroying a Change post" do
    visit change_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change post was successfully destroyed"
  end
end
