require "application_system_test_case"

class TermsofservicesTest < ApplicationSystemTestCase
  setup do
    @termsofservice = termsofservices(:one)
  end

  test "visiting the index" do
    visit termsofservices_url
    assert_selector "h1", text: "Termsofservices"
  end

  test "creating a Termsofservice" do
    visit termsofservices_url
    click_on "New Termsofservice"

    fill_in "Body", with: @termsofservice.body
    fill_in "Category", with: @termsofservice.category
    check "Isshown" if @termsofservice.isshown
    fill_in "Registertime", with: @termsofservice.registertime
    fill_in "Title", with: @termsofservice.title
    click_on "Create Termsofservice"

    assert_text "Termsofservice was successfully created"
    click_on "Back"
  end

  test "updating a Termsofservice" do
    visit termsofservices_url
    click_on "Edit", match: :first

    fill_in "Body", with: @termsofservice.body
    fill_in "Category", with: @termsofservice.category
    check "Isshown" if @termsofservice.isshown
    fill_in "Registertime", with: @termsofservice.registertime
    fill_in "Title", with: @termsofservice.title
    click_on "Update Termsofservice"

    assert_text "Termsofservice was successfully updated"
    click_on "Back"
  end

  test "destroying a Termsofservice" do
    visit termsofservices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Termsofservice was successfully destroyed"
  end
end
