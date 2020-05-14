require "application_system_test_case"

class PrivateQuestionsTest < ApplicationSystemTestCase
  setup do
    @private_question = private_questions(:one)
  end

  test "visiting the index" do
    visit private_questions_url
    assert_selector "h1", text: "Private Questions"
  end

  test "creating a Private question" do
    visit private_questions_url
    click_on "New Private Question"

    fill_in "Asktime", with: @private_question.asktime
    fill_in "Body", with: @private_question.body
    fill_in "Title", with: @private_question.title
    click_on "Create Private question"

    assert_text "Private question was successfully created"
    click_on "Back"
  end

  test "updating a Private question" do
    visit private_questions_url
    click_on "Edit", match: :first

    fill_in "Asktime", with: @private_question.asktime
    fill_in "Body", with: @private_question.body
    fill_in "Title", with: @private_question.title
    click_on "Update Private question"

    assert_text "Private question was successfully updated"
    click_on "Back"
  end

  test "destroying a Private question" do
    visit private_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Private question was successfully destroyed"
  end
end
