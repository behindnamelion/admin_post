require 'test_helper'

class BusinessQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_question = business_questions(:one)
  end

  test "should get index" do
    get business_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_business_question_url
    assert_response :success
  end

  test "should create business_question" do
    assert_difference('BusinessQuestion.count') do
      post business_questions_url, params: { business_question: { asktime: @business_question.asktime, body: @business_question.body, company: @business_question.company, email: @business_question.email, phone: @business_question.phone, title: @business_question.title, user_id: @business_question.user_id } }
    end

    assert_redirected_to business_question_url(BusinessQuestion.last)
  end

  test "should show business_question" do
    get business_question_url(@business_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_question_url(@business_question)
    assert_response :success
  end

  test "should update business_question" do
    patch business_question_url(@business_question), params: { business_question: { asktime: @business_question.asktime, body: @business_question.body, company: @business_question.company, email: @business_question.email, phone: @business_question.phone, title: @business_question.title, user_id: @business_question.user_id } }
    assert_redirected_to business_question_url(@business_question)
  end

  test "should destroy business_question" do
    assert_difference('BusinessQuestion.count', -1) do
      delete business_question_url(@business_question)
    end

    assert_redirected_to business_questions_url
  end
end
