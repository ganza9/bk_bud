require 'test_helper'

class PreRollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_roll = pre_rolls(:one)
  end

  test "should get index" do
    get pre_rolls_url
    assert_response :success
  end

  test "should get new" do
    get new_pre_roll_url
    assert_response :success
  end

  test "should create pre_roll" do
    assert_difference('PreRoll.count') do
      post pre_rolls_url, params: { pre_roll: { description: @pre_roll.description, indica_id: @pre_roll.indica_id, name: @pre_roll.name, price: @pre_roll.price, sativa_id: @pre_roll.sativa_id, thc: @pre_roll.thc } }
    end

    assert_redirected_to pre_roll_url(PreRoll.last)
  end

  test "should show pre_roll" do
    get pre_roll_url(@pre_roll)
    assert_response :success
  end

  test "should get edit" do
    get edit_pre_roll_url(@pre_roll)
    assert_response :success
  end

  test "should update pre_roll" do
    patch pre_roll_url(@pre_roll), params: { pre_roll: { description: @pre_roll.description, indica_id: @pre_roll.indica_id, name: @pre_roll.name, price: @pre_roll.price, sativa_id: @pre_roll.sativa_id, thc: @pre_roll.thc } }
    assert_redirected_to pre_roll_url(@pre_roll)
  end

  test "should destroy pre_roll" do
    assert_difference('PreRoll.count', -1) do
      delete pre_roll_url(@pre_roll)
    end

    assert_redirected_to pre_rolls_url
  end
end
