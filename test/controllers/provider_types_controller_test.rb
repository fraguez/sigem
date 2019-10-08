require 'test_helper'

class ProviderTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provider_type = provider_types(:one)
  end

  test "should get index" do
    get provider_types_url
    assert_response :success
  end

  test "should get new" do
    get new_provider_type_url
    assert_response :success
  end

  test "should create provider_type" do
    assert_difference('ProviderType.count') do
      post provider_types_url, params: { provider_type: { description: @provider_type.description } }
    end

    assert_redirected_to provider_type_url(ProviderType.last)
  end

  test "should show provider_type" do
    get provider_type_url(@provider_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_provider_type_url(@provider_type)
    assert_response :success
  end

  test "should update provider_type" do
    patch provider_type_url(@provider_type), params: { provider_type: { description: @provider_type.description } }
    assert_redirected_to provider_type_url(@provider_type)
  end

  test "should destroy provider_type" do
    assert_difference('ProviderType.count', -1) do
      delete provider_type_url(@provider_type)
    end

    assert_redirected_to provider_types_url
  end
end
