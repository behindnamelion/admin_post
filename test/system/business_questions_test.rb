require "application_system_test_case"

class BusinessQuestionsTest < ApplicationSystemTestCase
  setup do
    @business_question = business_questions(:one)
  end

  test "visiting the index" do
    visit business_questions_url
    assert_selector "h1", text: "Business Questions"
  end

  test "creating a Business question" do
    visit business_questions_url
    click_on "New Business Question"

    fill_in "Asktime", with: @business_question.asktime
    fill_in "Body", with: @business_question.body
    fill_in "Company", with: @business_question.company
    fill_in "Email", with: @business_question.email
    fill_in "Phone", with: @business_question.phone
    fill_in "Title", with: @business_question.title
    fill_in "User", with: @business_question.user_id
    click_on "Create Business question"

    assert_text "Business question was successfully created"
    click_on "Back"
  end

  test "updating a Business question" do
    visit business_questions_url
    click_on "Edit", match: :first

    fill_in "Asktime", with: @business_question.asktime
    fill_in "Body", with: @business_question.body
    fill_in "Company", with: @business_question.company
    fill_in "Email", with: @business_question.email
    fill_in "Phone", with: @business_question.phone
    fill_in "Title", with: @business_question.title
    fill_in "User", with: @business_question.user_id
    click_on "Update Business question"

    assert_text "Business question was successfully updated"
    click_on "Back"
  end

  test "destroying a Business question" do
    visit business_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Business question was successfully destroyed"
  end
end
