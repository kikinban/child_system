require "application_system_test_case"

class StampingsTest < ApplicationSystemTestCase
  setup do
    @stamping = stampings(:one)
  end

  test "visiting the index" do
    visit stampings_url
    assert_selector "h1", text: "Stampings"
  end

  test "creating a Stamping" do
    visit stampings_url
    click_on "New Stamping"

    fill_in "End time", with: @stamping.end_time
    fill_in "Start time", with: @stamping.start_time
    click_on "Create Stamping"

    assert_text "Stamping was successfully created"
    click_on "Back"
  end

  test "updating a Stamping" do
    visit stampings_url
    click_on "Edit", match: :first

    fill_in "End time", with: @stamping.end_time
    fill_in "Start time", with: @stamping.start_time
    click_on "Update Stamping"

    assert_text "Stamping was successfully updated"
    click_on "Back"
  end

  test "destroying a Stamping" do
    visit stampings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stamping was successfully destroyed"
  end
end
