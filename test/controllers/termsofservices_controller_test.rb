require 'test_helper'

class TermsofservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @termsofservice = termsofservices(:one)
  end

  test "should get index" do
    get termsofservices_url
    assert_response :success
  end

  test "should get new" do
    get new_termsofservice_url
    assert_response :success
  end

  test "should create termsofservice" do
    assert_difference('Termsofservice.count') do
      post termsofservices_url, params: { termsofservice: { body: @termsofservice.body, category: @termsofservice.category, isshown: @termsofservice.isshown, registertime: @termsofservice.registertime, title: @termsofservice.title } }
    end

    assert_redirected_to termsofservice_url(Termsofservice.last)
  end

  test "should show termsofservice" do
    get termsofservice_url(@termsofservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_termsofservice_url(@termsofservice)
    assert_response :success
  end

  test "should update termsofservice" do
    patch termsofservice_url(@termsofservice), params: { termsofservice: { body: @termsofservice.body, category: @termsofservice.category, isshown: @termsofservice.isshown, registertime: @termsofservice.registertime, title: @termsofservice.title } }
    assert_redirected_to termsofservice_url(@termsofservice)
  end

  test "should destroy termsofservice" do
    assert_difference('Termsofservice.count', -1) do
      delete termsofservice_url(@termsofservice)
    end

    assert_redirected_to termsofservices_url
  end
end
