require 'test_helper'

class IkMemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ik_memo = ik_memos(:one)
  end

  test "should get index" do
    get ik_memos_url
    assert_response :success
  end

  test "should get new" do
    get new_ik_memo_url
    assert_response :success
  end

  test "should create ik_memo" do
    assert_difference('IkMemo.count') do
      post ik_memos_url, params: { ik_memo: { content: @ik_memo.content } }
    end

    assert_redirected_to ik_memo_url(IkMemo.last)
  end

  test "should show ik_memo" do
    get ik_memo_url(@ik_memo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ik_memo_url(@ik_memo)
    assert_response :success
  end

  test "should update ik_memo" do
    patch ik_memo_url(@ik_memo), params: { ik_memo: { content: @ik_memo.content } }
    assert_redirected_to ik_memo_url(@ik_memo)
  end

  test "should destroy ik_memo" do
    assert_difference('IkMemo.count', -1) do
      delete ik_memo_url(@ik_memo)
    end

    assert_redirected_to ik_memos_url
  end
end
