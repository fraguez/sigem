require 'test_helper'

class TypeDocumentReferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_document_reference = type_document_references(:one)
  end

  test "should get index" do
    get type_document_references_url
    assert_response :success
  end

  test "should get new" do
    get new_type_document_reference_url
    assert_response :success
  end

  test "should create type_document_reference" do
    assert_difference('TypeDocumentReference.count') do
      post type_document_references_url, params: { type_document_reference: { code: @type_document_reference.code, name: @type_document_reference.name } }
    end

    assert_redirected_to type_document_reference_url(TypeDocumentReference.last)
  end

  test "should show type_document_reference" do
    get type_document_reference_url(@type_document_reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_document_reference_url(@type_document_reference)
    assert_response :success
  end

  test "should update type_document_reference" do
    patch type_document_reference_url(@type_document_reference), params: { type_document_reference: { code: @type_document_reference.code, name: @type_document_reference.name } }
    assert_redirected_to type_document_reference_url(@type_document_reference)
  end

  test "should destroy type_document_reference" do
    assert_difference('TypeDocumentReference.count', -1) do
      delete type_document_reference_url(@type_document_reference)
    end

    assert_redirected_to type_document_references_url
  end
end
