require 'test_helper'

class PrivateQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @private_question = private_questions(:one)
  end

  test "should get index" do
    get private_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_private_question_url
    assert_response :success
  end

  test "should create private_question" do
    assert_difference('PrivateQuestion.count') do
      post private_questions_url, params: { private_question: { asktime: @private_question.asktime, body: @private_question.body, title: @private_question.title } }
    end

    assert_redirected_to private_question_url(PrivateQuestion.last)
  end

  test "should show private_question" do
    get private_question_url(@private_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_private_question_url(@private_question)
    assert_response :success
  end

  test "should update private_question" do
    patch private_question_url(@private_question), params: { private_question: { asktime: @private_question.asktime, body: @private_question.body, title: @private_question.title } }
    assert_redirected_to private_question_url(@private_question)
  end

  test "should destroy private_question" do
    assert_difference('PrivateQuestion.count', -1) do
      delete private_question_url(@private_question)
    end

    assert_redirected_to private_questions_url
  end
end
