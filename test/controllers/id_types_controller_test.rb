require 'test_helper'

class IdTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @id_type = id_types(:one)
  end

  test "should get index" do
    get id_types_url
    assert_response :success
  end

  test "should get new" do
    get new_id_type_url
    assert_response :success
  end

  test "should create id_type" do
    assert_difference('IdType.count') do
      post id_types_url, params: { id_type: { code: @id_type.code, name: @id_type.name } }
    end

    assert_redirected_to id_type_url(IdType.last)
  end

  test "should show id_type" do
    get id_type_url(@id_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_id_type_url(@id_type)
    assert_response :success
  end

  test "should update id_type" do
    patch id_type_url(@id_type), params: { id_type: { code: @id_type.code, name: @id_type.name } }
    assert_redirected_to id_type_url(@id_type)
  end

  test "should destroy id_type" do
    assert_difference('IdType.count', -1) do
      delete id_type_url(@id_type)
    end

    assert_redirected_to id_types_url
  end
end
