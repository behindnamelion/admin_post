require "application_system_test_case"

class FrequentQuestionsTest < ApplicationSystemTestCase
  setup do
    @frequent_question = frequent_questions(:one)
  end

  test "visiting the index" do
    visit frequent_questions_url
    assert_selector "h1", text: "Frequent Questions"
  end

  test "creating a Frequent question" do
    visit frequent_questions_url
    click_on "New Frequent Question"

    fill_in "Asktime", with: @frequent_question.asktime
    fill_in "Body", with: @frequent_question.body
    check "Isshown" if @frequent_question.isshown
    fill_in "Question type", with: @frequent_question.question_type
    fill_in "Title", with: @frequent_question.title
    click_on "Create Frequent question"

    assert_text "Frequent question was successfully created"
    click_on "Back"
  end

  test "updating a Frequent question" do
    visit frequent_questions_url
    click_on "Edit", match: :first

    fill_in "Asktime", with: @frequent_question.asktime
    fill_in "Body", with: @frequent_question.body
    check "Isshown" if @frequent_question.isshown
    fill_in "Question type", with: @frequent_question.question_type
    fill_in "Title", with: @frequent_question.title
    click_on "Update Frequent question"

    assert_text "Frequent question was successfully updated"
    click_on "Back"
  end

  test "destroying a Frequent question" do
    visit frequent_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frequent question was successfully destroyed"
  end
end
