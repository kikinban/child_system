require "application_system_test_case"

class IncorporatesTest < ApplicationSystemTestCase
  setup do
    @incorporate = incorporates(:one)
  end

  test "visiting the index" do
    visit incorporates_url
    assert_selector "h1", text: "Incorporates"
  end

  test "creating a Incorporate" do
    visit incorporates_url
    click_on "New Incorporate"

    fill_in "Content", with: @incorporate.content
    fill_in "Date", with: @incorporate.date
    fill_in "Image 1", with: @incorporate.image_1
    fill_in "Image 2", with: @incorporate.image_2
    fill_in "Image 3", with: @incorporate.image_3
    fill_in "Title", with: @incorporate.title
    click_on "Create Incorporate"

    assert_text "Incorporate was successfully created"
    click_on "Back"
  end

  test "updating a Incorporate" do
    visit incorporates_url
    click_on "Edit", match: :first

    fill_in "Content", with: @incorporate.content
    fill_in "Date", with: @incorporate.date
    fill_in "Image 1", with: @incorporate.image_1
    fill_in "Image 2", with: @incorporate.image_2
    fill_in "Image 3", with: @incorporate.image_3
    fill_in "Title", with: @incorporate.title
    click_on "Update Incorporate"

    assert_text "Incorporate was successfully updated"
    click_on "Back"
  end

  test "destroying a Incorporate" do
    visit incorporates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incorporate was successfully destroyed"
  end
end
