require "test_helper"

class ParentsNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parents_note = parents_notes(:one)
  end

  test "should get index" do
    get parents_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_parents_note_url
    assert_response :success
  end

  test "should create parents_note" do
    assert_difference('ParentsNote.count') do
      post parents_notes_url, params: { parents_note: { content: @parents_note.content } }
    end

    assert_redirected_to parents_note_url(ParentsNote.last)
  end

  test "should show parents_note" do
    get parents_note_url(@parents_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_parents_note_url(@parents_note)
    assert_response :success
  end

  test "should update parents_note" do
    patch parents_note_url(@parents_note), params: { parents_note: { content: @parents_note.content } }
    assert_redirected_to parents_note_url(@parents_note)
  end

  test "should destroy parents_note" do
    assert_difference('ParentsNote.count', -1) do
      delete parents_note_url(@parents_note)
    end

    assert_redirected_to parents_notes_url
  end
end
