require 'test_helper'

class DocumentAuthorizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document_authorization = document_authorizations(:one)
  end

  test "should get index" do
    get document_authorizations_url
    assert_response :success
  end

  test "should get new" do
    get new_document_authorization_url
    assert_response :success
  end

  test "should create document_authorization" do
    assert_difference('DocumentAuthorization.count') do
      post document_authorizations_url, params: { document_authorization: { code: @document_authorization.code, name: @document_authorization.name } }
    end

    assert_redirected_to document_authorization_url(DocumentAuthorization.last)
  end

  test "should show document_authorization" do
    get document_authorization_url(@document_authorization)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_authorization_url(@document_authorization)
    assert_response :success
  end

  test "should update document_authorization" do
    patch document_authorization_url(@document_authorization), params: { document_authorization: { code: @document_authorization.code, name: @document_authorization.name } }
    assert_redirected_to document_authorization_url(@document_authorization)
  end

  test "should destroy document_authorization" do
    assert_difference('DocumentAuthorization.count', -1) do
      delete document_authorization_url(@document_authorization)
    end

    assert_redirected_to document_authorizations_url
  end
end
