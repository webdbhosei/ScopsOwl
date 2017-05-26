require 'test_helper'

class SmplChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smpl_chat = smpl_chats(:one)
  end

  test "should get index" do
    get smpl_chats_url
    assert_response :success
  end

  test "should get new" do
    get new_smpl_chat_url
    assert_response :success
  end

  test "should create smpl_chat" do
    assert_difference('SmplChat.count') do
      post smpl_chats_url, params: { smpl_chat: { content: @smpl_chat.content, user_id: @smpl_chat.user_id } }
    end

    assert_redirected_to smpl_chat_url(SmplChat.last)
  end

  test "should show smpl_chat" do
    get smpl_chat_url(@smpl_chat)
    assert_response :success
  end

  test "should get edit" do
    get edit_smpl_chat_url(@smpl_chat)
    assert_response :success
  end

  test "should update smpl_chat" do
    patch smpl_chat_url(@smpl_chat), params: { smpl_chat: { content: @smpl_chat.content, user_id: @smpl_chat.user_id } }
    assert_redirected_to smpl_chat_url(@smpl_chat)
  end

  test "should destroy smpl_chat" do
    assert_difference('SmplChat.count', -1) do
      delete smpl_chat_url(@smpl_chat)
    end

    assert_redirected_to smpl_chats_url
  end
end
