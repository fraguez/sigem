require 'test_helper'

class CurrencyCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currency_code = currency_codes(:one)
  end

  test "should get index" do
    get currency_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_currency_code_url
    assert_response :success
  end

  test "should create currency_code" do
    assert_difference('CurrencyCode.count') do
      post currency_codes_url, params: { currency_code: { code: @currency_code.code, country: @currency_code.country, name: @currency_code.name } }
    end

    assert_redirected_to currency_code_url(CurrencyCode.last)
  end

  test "should show currency_code" do
    get currency_code_url(@currency_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_currency_code_url(@currency_code)
    assert_response :success
  end

  test "should update currency_code" do
    patch currency_code_url(@currency_code), params: { currency_code: { code: @currency_code.code, country: @currency_code.country, name: @currency_code.name } }
    assert_redirected_to currency_code_url(@currency_code)
  end

  test "should destroy currency_code" do
    assert_difference('CurrencyCode.count', -1) do
      delete currency_code_url(@currency_code)
    end

    assert_redirected_to currency_codes_url
  end
end
