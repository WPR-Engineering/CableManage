require 'test_helper'

class TerminalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terminal = terminals(:one)
  end

  test "should get index" do
    get terminals_url
    assert_response :success
  end

  test "should get new" do
    get new_terminal_url
    assert_response :success
  end

  test "should create terminal" do
    assert_difference('Terminal.count') do
      post terminals_url, params: { terminal: { signal_type: @terminal.signal_type, terminal_number: @terminal.terminal_number, terminal_type: @terminal.terminal_type } }
    end

    assert_redirected_to terminal_url(Terminal.last)
  end

  test "should show terminal" do
    get terminal_url(@terminal)
    assert_response :success
  end

  test "should get edit" do
    get edit_terminal_url(@terminal)
    assert_response :success
  end

  test "should update terminal" do
    patch terminal_url(@terminal), params: { terminal: { signal_type: @terminal.signal_type, terminal_number: @terminal.terminal_number, terminal_type: @terminal.terminal_type } }
    assert_redirected_to terminal_url(@terminal)
  end

  test "should destroy terminal" do
    assert_difference('Terminal.count', -1) do
      delete terminal_url(@terminal)
    end

    assert_redirected_to terminals_url
  end
end
