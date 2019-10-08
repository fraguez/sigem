require 'test_helper'

class CustomermanagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customermanager = customermanagers(:one)
  end

  test "should get index" do
    get customermanagers_url
    assert_response :success
  end

  test "should get new" do
    get new_customermanager_url
    assert_response :success
  end

  test "should create customermanager" do
    assert_difference('Customermanager.count') do
      post customermanagers_url, params: { customermanager: { birthday: @customermanager.birthday, customer_id: @customermanager.customer_id, identificationcard: @customermanager.identificationcard, lastname: @customermanager.lastname, name: @customermanager.name, sex_id: @customermanager.sex_id } }
    end

    assert_redirected_to customermanager_url(Customermanager.last)
  end

  test "should show customermanager" do
    get customermanager_url(@customermanager)
    assert_response :success
  end

  test "should get edit" do
    get edit_customermanager_url(@customermanager)
    assert_response :success
  end

  test "should update customermanager" do
    patch customermanager_url(@customermanager), params: { customermanager: { birthday: @customermanager.birthday, customer_id: @customermanager.customer_id, identificationcard: @customermanager.identificationcard, lastname: @customermanager.lastname, name: @customermanager.name, sex_id: @customermanager.sex_id } }
    assert_redirected_to customermanager_url(@customermanager)
  end

  test "should destroy customermanager" do
    assert_difference('Customermanager.count', -1) do
      delete customermanager_url(@customermanager)
    end

    assert_redirected_to customermanagers_url
  end
end
