require "application_system_test_case"

class ParentInformationsTest < ApplicationSystemTestCase
  setup do
    @parent_information = parent_informations(:one)
  end

  test "visiting the index" do
    visit parent_informations_url
    assert_selector "h1", text: "Parent Informations"
  end

  test "creating a Parent information" do
    visit parent_informations_url
    click_on "New Parent Information"

    fill_in "Content", with: @parent_information.content
    fill_in "Date", with: @parent_information.date
    fill_in "File content", with: @parent_information.file_content
    fill_in "Title", with: @parent_information.title
    click_on "Create Parent information"

    assert_text "Parent information was successfully created"
    click_on "Back"
  end

  test "updating a Parent information" do
    visit parent_informations_url
    click_on "Edit", match: :first

    fill_in "Content", with: @parent_information.content
    fill_in "Date", with: @parent_information.date
    fill_in "File content", with: @parent_information.file_content
    fill_in "Title", with: @parent_information.title
    click_on "Update Parent information"

    assert_text "Parent information was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent information" do
    visit parent_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent information was successfully destroyed"
  end
end
