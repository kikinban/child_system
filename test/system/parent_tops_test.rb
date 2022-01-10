require "application_system_test_case"

class ParentTopsTest < ApplicationSystemTestCase
  setup do
    @parent_top = parent_tops(:one)
  end

  test "visiting the index" do
    visit parent_tops_url
    assert_selector "h1", text: "Parent Tops"
  end

  test "creating a Parent top" do
    visit parent_tops_url
    click_on "New Parent Top"

    click_on "Create Parent top"

    assert_text "Parent top was successfully created"
    click_on "Back"
  end

  test "updating a Parent top" do
    visit parent_tops_url
    click_on "Edit", match: :first

    click_on "Update Parent top"

    assert_text "Parent top was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent top" do
    visit parent_tops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent top was successfully destroyed"
  end
end
