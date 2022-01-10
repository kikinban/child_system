require "test_helper"

class ParentFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_form = parent_forms(:one)
  end

  test "should get index" do
    get parent_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_form_url
    assert_response :success
  end

  test "should create parent_form" do
    assert_difference('ParentForm.count') do
      post parent_forms_url, params: { parent_form: { children_name: @parent_form.children_name, content_name: @parent_form.content_name, contents: @parent_form.contents, parent_name: @parent_form.parent_name } }
    end

    assert_redirected_to parent_form_url(ParentForm.last)
  end

  test "should show parent_form" do
    get parent_form_url(@parent_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_form_url(@parent_form)
    assert_response :success
  end

  test "should update parent_form" do
    patch parent_form_url(@parent_form), params: { parent_form: { children_name: @parent_form.children_name, content_name: @parent_form.content_name, contents: @parent_form.contents, parent_name: @parent_form.parent_name } }
    assert_redirected_to parent_form_url(@parent_form)
  end

  test "should destroy parent_form" do
    assert_difference('ParentForm.count', -1) do
      delete parent_form_url(@parent_form)
    end

    assert_redirected_to parent_forms_url
  end
end
