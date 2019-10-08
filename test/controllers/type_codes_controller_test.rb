require 'test_helper'

class TypeCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_code = type_codes(:one)
  end

  test "should get index" do
    get type_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_type_code_url
    assert_response :success
  end

  test "should create type_code" do
    assert_difference('TypeCode.count') do
      post type_codes_url, params: { type_code: { code: @type_code.code, name: @type_code.name } }
    end

    assert_redirected_to type_code_url(TypeCode.last)
  end

  test "should show type_code" do
    get type_code_url(@type_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_code_url(@type_code)
    assert_response :success
  end

  test "should update type_code" do
    patch type_code_url(@type_code), params: { type_code: { code: @type_code.code, name: @type_code.name } }
    assert_redirected_to type_code_url(@type_code)
  end

  test "should destroy type_code" do
    assert_difference('TypeCode.count', -1) do
      delete type_code_url(@type_code)
    end

    assert_redirected_to type_codes_url
  end
end
