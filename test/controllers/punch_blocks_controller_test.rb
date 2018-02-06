require 'test_helper'

class PunchBlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @punch_block = punch_blocks(:one)
  end

  test "should get index" do
    get punch_blocks_url
    assert_response :success
  end

  test "should get new" do
    get new_punch_block_url
    assert_response :success
  end

  test "should create punch_block" do
    assert_difference('PunchBlock.count') do
      post punch_blocks_url, params: { punch_block: { block_description: @punch_block.block_description, block_location: @punch_block.block_location, block_number: @punch_block.block_number, block_type: @punch_block.block_type, terminal_id: @punch_block.terminal_id } }
    end

    assert_redirected_to punch_block_url(PunchBlock.last)
  end

  test "should show punch_block" do
    get punch_block_url(@punch_block)
    assert_response :success
  end

  test "should get edit" do
    get edit_punch_block_url(@punch_block)
    assert_response :success
  end

  test "should update punch_block" do
    patch punch_block_url(@punch_block), params: { punch_block: { block_description: @punch_block.block_description, block_location: @punch_block.block_location, block_number: @punch_block.block_number, block_type: @punch_block.block_type, terminal_id: @punch_block.terminal_id } }
    assert_redirected_to punch_block_url(@punch_block)
  end

  test "should destroy punch_block" do
    assert_difference('PunchBlock.count', -1) do
      delete punch_block_url(@punch_block)
    end

    assert_redirected_to punch_blocks_url
  end
end
