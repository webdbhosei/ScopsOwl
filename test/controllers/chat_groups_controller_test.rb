require 'test_helper'

class ChatGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat_group = chat_groups(:one)
  end

  test "should get index" do
    get chat_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_group_url
    assert_response :success
  end

  test "should create chat_group" do
    assert_difference('ChatGroup.count') do
      post chat_groups_url, params: { chat_group: { name: @chat_group.name } }
    end

    assert_redirected_to chat_group_url(ChatGroup.last)
  end

  test "should show chat_group" do
    get chat_group_url(@chat_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_group_url(@chat_group)
    assert_response :success
  end

  test "should update chat_group" do
    patch chat_group_url(@chat_group), params: { chat_group: { name: @chat_group.name } }
    assert_redirected_to chat_group_url(@chat_group)
  end

  test "should destroy chat_group" do
    assert_difference('ChatGroup.count', -1) do
      delete chat_group_url(@chat_group)
    end

    assert_redirected_to chat_groups_url
  end
end
