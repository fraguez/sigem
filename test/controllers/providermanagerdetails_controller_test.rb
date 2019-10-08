require 'test_helper'

class ProvidermanagerdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @providermanagerdetail = providermanagerdetails(:one)
  end

  test "should get index" do
    get providermanagerdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_providermanagerdetail_url
    assert_response :success
  end

  test "should create providermanagerdetail" do
    assert_difference('Providermanagerdetail.count') do
      post providermanagerdetails_url, params: { providermanagerdetail: { cellnumber: @providermanagerdetail.cellnumber, extension: @providermanagerdetail.extension, faxnumber: @providermanagerdetail.faxnumber, officenumber: @providermanagerdetail.officenumber, officialemail: @providermanagerdetail.officialemail, providermanager_id: @providermanagerdetail.providermanager_id, secundaryemail: @providermanagerdetail.secundaryemail } }
    end

    assert_redirected_to providermanagerdetail_url(Providermanagerdetail.last)
  end

  test "should show providermanagerdetail" do
    get providermanagerdetail_url(@providermanagerdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_providermanagerdetail_url(@providermanagerdetail)
    assert_response :success
  end

  test "should update providermanagerdetail" do
    patch providermanagerdetail_url(@providermanagerdetail), params: { providermanagerdetail: { cellnumber: @providermanagerdetail.cellnumber, extension: @providermanagerdetail.extension, faxnumber: @providermanagerdetail.faxnumber, officenumber: @providermanagerdetail.officenumber, officialemail: @providermanagerdetail.officialemail, providermanager_id: @providermanagerdetail.providermanager_id, secundaryemail: @providermanagerdetail.secundaryemail } }
    assert_redirected_to providermanagerdetail_url(@providermanagerdetail)
  end

  test "should destroy providermanagerdetail" do
    assert_difference('Providermanagerdetail.count', -1) do
      delete providermanagerdetail_url(@providermanagerdetail)
    end

    assert_redirected_to providermanagerdetails_url
  end
end
