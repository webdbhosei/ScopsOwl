require 'test_helper'

class EbaAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eba_answer = eba_answers(:one)
  end

  test "should get index" do
    get eba_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_eba_answer_url
    assert_response :success
  end

  test "should create eba_answer" do
    assert_difference('EbaAnswer.count') do
      post eba_answers_url, params: { eba_answer: { answer: @eba_answer.answer, question_id: @eba_answer.question_id, uploaded_time: @eba_answer.uploaded_time, user_id: @eba_answer.user_id } }
    end

    assert_redirected_to eba_answer_url(EbaAnswer.last)
  end

  test "should show eba_answer" do
    get eba_answer_url(@eba_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_eba_answer_url(@eba_answer)
    assert_response :success
  end

  test "should update eba_answer" do
    patch eba_answer_url(@eba_answer), params: { eba_answer: { answer: @eba_answer.answer, question_id: @eba_answer.question_id, uploaded_time: @eba_answer.uploaded_time, user_id: @eba_answer.user_id } }
    assert_redirected_to eba_answer_url(@eba_answer)
  end

  test "should destroy eba_answer" do
    assert_difference('EbaAnswer.count', -1) do
      delete eba_answer_url(@eba_answer)
    end

    assert_redirected_to eba_answers_url
  end
end
