require 'test_helper'

class IdtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idtable = idtables(:one)
  end

  test "should get index" do
    get idtables_url
    assert_response :success
  end

  test "should get new" do
    get new_idtable_url
    assert_response :success
  end

  test "should create idtable" do
    assert_difference('Idtable.count') do
      post idtables_url, params: { idtable: { idtype: @idtable.idtype, minbal: @idtable.minbal } }
    end

    assert_redirected_to idtable_url(Idtable.last)
  end

  test "should show idtable" do
    get idtable_url(@idtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_idtable_url(@idtable)
    assert_response :success
  end

  test "should update idtable" do
    patch idtable_url(@idtable), params: { idtable: { idtype: @idtable.idtype, minbal: @idtable.minbal } }
    assert_redirected_to idtable_url(@idtable)
  end

  test "should destroy idtable" do
    assert_difference('Idtable.count', -1) do
      delete idtable_url(@idtable)
    end

    assert_redirected_to idtables_url
  end
end
