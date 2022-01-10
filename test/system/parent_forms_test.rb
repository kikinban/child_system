require "application_system_test_case"

class ParentFormsTest < ApplicationSystemTestCase
  setup do
    @parent_form = parent_forms(:one)
  end

  test "visiting the index" do
    visit parent_forms_url
    assert_selector "h1", text: "Parent Forms"
  end

  test "creating a Parent form" do
    visit parent_forms_url
    click_on "New Parent Form"

    fill_in "Children name", with: @parent_form.children_name
    fill_in "Content name", with: @parent_form.content_name
    fill_in "Contents", with: @parent_form.contents
    fill_in "Parent name", with: @parent_form.parent_name
    click_on "Create Parent form"

    assert_text "Parent form was successfully created"
    click_on "Back"
  end

  test "updating a Parent form" do
    visit parent_forms_url
    click_on "Edit", match: :first

    fill_in "Children name", with: @parent_form.children_name
    fill_in "Content name", with: @parent_form.content_name
    fill_in "Contents", with: @parent_form.contents
    fill_in "Parent name", with: @parent_form.parent_name
    click_on "Update Parent form"

    assert_text "Parent form was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent form" do
    visit parent_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent form was successfully destroyed"
  end
end
