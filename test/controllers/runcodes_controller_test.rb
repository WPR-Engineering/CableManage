require 'test_helper'

class RuncodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @runcode = runcodes(:one)
  end

  test "should get index" do
    get runcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_runcode_url
    assert_response :success
  end

  test "should create runcode" do
    assert_difference('Runcode.count') do
      post runcodes_url, params: { runcode: { code: @runcode.code, description: @runcode.description, device_id: @runcode.device_id, terminal_id: @runcode.terminal_id, wire_id: @runcode.wire_id } }
    end

    assert_redirected_to runcode_url(Runcode.last)
  end

  test "should show runcode" do
    get runcode_url(@runcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_runcode_url(@runcode)
    assert_response :success
  end

  test "should update runcode" do
    patch runcode_url(@runcode), params: { runcode: { code: @runcode.code, description: @runcode.description, device_id: @runcode.device_id, terminal_id: @runcode.terminal_id, wire_id: @runcode.wire_id } }
    assert_redirected_to runcode_url(@runcode)
  end

  test "should destroy runcode" do
    assert_difference('Runcode.count', -1) do
      delete runcode_url(@runcode)
    end

    assert_redirected_to runcodes_url
  end
end
