require 'test_helper'

class ProvidermanagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @providermanager = providermanagers(:one)
  end

  test "should get index" do
    get providermanagers_url
    assert_response :success
  end

  test "should get new" do
    get new_providermanager_url
    assert_response :success
  end

  test "should create providermanager" do
    assert_difference('Providermanager.count') do
      post providermanagers_url, params: { providermanager: { birthday: @providermanager.birthday, identificationcard: @providermanager.identificationcard, lastname: @providermanager.lastname, name: @providermanager.name, provider_id: @providermanager.provider_id, sex_id: @providermanager.sex_id } }
    end

    assert_redirected_to providermanager_url(Providermanager.last)
  end

  test "should show providermanager" do
    get providermanager_url(@providermanager)
    assert_response :success
  end

  test "should get edit" do
    get edit_providermanager_url(@providermanager)
    assert_response :success
  end

  test "should update providermanager" do
    patch providermanager_url(@providermanager), params: { providermanager: { birthday: @providermanager.birthday, identificationcard: @providermanager.identificationcard, lastname: @providermanager.lastname, name: @providermanager.name, provider_id: @providermanager.provider_id, sex_id: @providermanager.sex_id } }
    assert_redirected_to providermanager_url(@providermanager)
  end

  test "should destroy providermanager" do
    assert_difference('Providermanager.count', -1) do
      delete providermanager_url(@providermanager)
    end

    assert_redirected_to providermanagers_url
  end
end
