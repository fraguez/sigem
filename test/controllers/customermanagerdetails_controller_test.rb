require 'test_helper'

class CustomermanagerdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customermanagerdetail = customermanagerdetails(:one)
  end

  test "should get index" do
    get customermanagerdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_customermanagerdetail_url
    assert_response :success
  end

  test "should create customermanagerdetail" do
    assert_difference('Customermanagerdetail.count') do
      post customermanagerdetails_url, params: { customermanagerdetail: { cellnumber: @customermanagerdetail.cellnumber, customermanager_id: @customermanagerdetail.customermanager_id, extension: @customermanagerdetail.extension, faxnumber: @customermanagerdetail.faxnumber, officenumber: @customermanagerdetail.officenumber, officialemail: @customermanagerdetail.officialemail, secundaryemail: @customermanagerdetail.secundaryemail } }
    end

    assert_redirected_to customermanagerdetail_url(Customermanagerdetail.last)
  end

  test "should show customermanagerdetail" do
    get customermanagerdetail_url(@customermanagerdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_customermanagerdetail_url(@customermanagerdetail)
    assert_response :success
  end

  test "should update customermanagerdetail" do
    patch customermanagerdetail_url(@customermanagerdetail), params: { customermanagerdetail: { cellnumber: @customermanagerdetail.cellnumber, customermanager_id: @customermanagerdetail.customermanager_id, extension: @customermanagerdetail.extension, faxnumber: @customermanagerdetail.faxnumber, officenumber: @customermanagerdetail.officenumber, officialemail: @customermanagerdetail.officialemail, secundaryemail: @customermanagerdetail.secundaryemail } }
    assert_redirected_to customermanagerdetail_url(@customermanagerdetail)
  end

  test "should destroy customermanagerdetail" do
    assert_difference('Customermanagerdetail.count', -1) do
      delete customermanagerdetail_url(@customermanagerdetail)
    end

    assert_redirected_to customermanagerdetails_url
  end
end
