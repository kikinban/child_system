require "application_system_test_case"

class DailyRecordsTest < ApplicationSystemTestCase
  setup do
    @daily_record = daily_records(:one)
  end

  test "visiting the index" do
    visit daily_records_url
    assert_selector "h1", text: "Daily Records"
  end

  test "creating a Daily record" do
    visit daily_records_url
    click_on "New Daily Record"

    fill_in "Activities", with: @daily_record.activities
    fill_in "Information", with: @daily_record.information
    fill_in "States", with: @daily_record.states
    click_on "Create Daily record"

    assert_text "Daily record was successfully created"
    click_on "Back"
  end

  test "updating a Daily record" do
    visit daily_records_url
    click_on "Edit", match: :first

    fill_in "Activities", with: @daily_record.activities
    fill_in "Information", with: @daily_record.information
    fill_in "States", with: @daily_record.states
    click_on "Update Daily record"

    assert_text "Daily record was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily record" do
    visit daily_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily record was successfully destroyed"
  end
end
