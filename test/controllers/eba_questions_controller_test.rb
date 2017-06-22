require 'test_helper'

class EbaQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eba_question = eba_questions(:one)
  end

  test "should get index" do
    get eba_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_eba_question_url
    assert_response :success
  end

  test "should create eba_question" do
    assert_difference('EbaQuestion.count') do
      post eba_questions_url, params: { eba_question: { classname: @eba_question.classname, title: @eba_question.title, uploaded_time: @eba_question.uploaded_time, user_id: @eba_question.user_id } }
    end

    assert_redirected_to eba_question_url(EbaQuestion.last)
  end

  test "should show eba_question" do
    get eba_question_url(@eba_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_eba_question_url(@eba_question)
    assert_response :success
  end

  test "should update eba_question" do
    patch eba_question_url(@eba_question), params: { eba_question: { classname: @eba_question.classname, title: @eba_question.title, uploaded_time: @eba_question.uploaded_time, user_id: @eba_question.user_id } }
    assert_redirected_to eba_question_url(@eba_question)
  end

  test "should destroy eba_question" do
    assert_difference('EbaQuestion.count', -1) do
      delete eba_question_url(@eba_question)
    end

    assert_redirected_to eba_questions_url
  end
end
