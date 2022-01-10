require "application_system_test_case"

class ParentsNotesTest < ApplicationSystemTestCase
  setup do
    @parents_note = parents_notes(:one)
  end

  test "visiting the index" do
    visit parents_notes_url
    assert_selector "h1", text: "Parents Notes"
  end

  test "creating a Parents note" do
    visit parents_notes_url
    click_on "New Parents Note"

    fill_in "Content", with: @parents_note.content
    click_on "Create Parents note"

    assert_text "Parents note was successfully created"
    click_on "Back"
  end

  test "updating a Parents note" do
    visit parents_notes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @parents_note.content
    click_on "Update Parents note"

    assert_text "Parents note was successfully updated"
    click_on "Back"
  end

  test "destroying a Parents note" do
    visit parents_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parents note was successfully destroyed"
  end
end
