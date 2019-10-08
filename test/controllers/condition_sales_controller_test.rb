require 'test_helper'

class ConditionSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condition_sale = condition_sales(:one)
  end

  test "should get index" do
    get condition_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_condition_sale_url
    assert_response :success
  end

  test "should create condition_sale" do
    assert_difference('ConditionSale.count') do
      post condition_sales_url, params: { condition_sale: { code: @condition_sale.code, name: @condition_sale.name } }
    end

    assert_redirected_to condition_sale_url(ConditionSale.last)
  end

  test "should show condition_sale" do
    get condition_sale_url(@condition_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_condition_sale_url(@condition_sale)
    assert_response :success
  end

  test "should update condition_sale" do
    patch condition_sale_url(@condition_sale), params: { condition_sale: { code: @condition_sale.code, name: @condition_sale.name } }
    assert_redirected_to condition_sale_url(@condition_sale)
  end

  test "should destroy condition_sale" do
    assert_difference('ConditionSale.count', -1) do
      delete condition_sale_url(@condition_sale)
    end

    assert_redirected_to condition_sales_url
  end
end
