require "test_helper"

class ParentInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_information = parent_informations(:one)
  end

  test "should get index" do
    get parent_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_information_url
    assert_response :success
  end

  test "should create parent_information" do
    assert_difference('ParentInformation.count') do
      post parent_informations_url, params: { parent_information: { content: @parent_information.content, date: @parent_information.date, file_content: @parent_information.file_content, title: @parent_information.title } }
    end

    assert_redirected_to parent_information_url(ParentInformation.last)
  end

  test "should show parent_information" do
    get parent_information_url(@parent_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_information_url(@parent_information)
    assert_response :success
  end

  test "should update parent_information" do
    patch parent_information_url(@parent_information), params: { parent_information: { content: @parent_information.content, date: @parent_information.date, file_content: @parent_information.file_content, title: @parent_information.title } }
    assert_redirected_to parent_information_url(@parent_information)
  end

  test "should destroy parent_information" do
    assert_difference('ParentInformation.count', -1) do
      delete parent_information_url(@parent_information)
    end

    assert_redirected_to parent_informations_url
  end
end
