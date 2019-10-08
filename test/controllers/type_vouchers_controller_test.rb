require 'test_helper'

class TypeVouchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_voucher = type_vouchers(:one)
  end

  test "should get index" do
    get type_vouchers_url
    assert_response :success
  end

  test "should get new" do
    get new_type_voucher_url
    assert_response :success
  end

  test "should create type_voucher" do
    assert_difference('TypeVoucher.count') do
      post type_vouchers_url, params: { type_voucher: { acronym: @type_voucher.acronym, label: @type_voucher.label, name: @type_voucher.name, xmlSchema: @type_voucher.xmlSchema } }
    end

    assert_redirected_to type_voucher_url(TypeVoucher.last)
  end

  test "should show type_voucher" do
    get type_voucher_url(@type_voucher)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_voucher_url(@type_voucher)
    assert_response :success
  end

  test "should update type_voucher" do
    patch type_voucher_url(@type_voucher), params: { type_voucher: { acronym: @type_voucher.acronym, label: @type_voucher.label, name: @type_voucher.name, xmlSchema: @type_voucher.xmlSchema } }
    assert_redirected_to type_voucher_url(@type_voucher)
  end

  test "should destroy type_voucher" do
    assert_difference('TypeVoucher.count', -1) do
      delete type_voucher_url(@type_voucher)
    end

    assert_redirected_to type_vouchers_url
  end
end
