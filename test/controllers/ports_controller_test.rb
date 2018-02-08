require 'test_helper'

class PortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @port = ports(:one)
  end

  test "should get index" do
    get ports_url
    assert_response :success
  end

  test "should get new" do
    get new_port_url
    assert_response :success
  end

  test "should create port" do
    assert_difference('Port.count') do
      post ports_url, params: { port: { port: @port.port, port_input: @port.port_input, port_type: @port.port_type, signal_type: @port.signal_type } }
    end

    assert_redirected_to port_url(Port.last)
  end

  test "should show port" do
    get port_url(@port)
    assert_response :success
  end

  test "should get edit" do
    get edit_port_url(@port)
    assert_response :success
  end

  test "should update port" do
    patch port_url(@port), params: { port: { port: @port.port, port_input: @port.port_input, port_type: @port.port_type, signal_type: @port.signal_type } }
    assert_redirected_to port_url(@port)
  end

  test "should destroy port" do
    assert_difference('Port.count', -1) do
      delete port_url(@port)
    end

    assert_redirected_to ports_url
  end
end
