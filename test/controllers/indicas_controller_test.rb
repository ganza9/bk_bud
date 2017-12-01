require 'test_helper'

class IndicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indica = indicas(:one)
  end

  test "should get index" do
    get indicas_url
    assert_response :success
  end

  test "should get new" do
    get new_indica_url
    assert_response :success
  end

  test "should create indica" do
    assert_difference('Indica.count') do
      post indicas_url, params: { indica: {  } }
    end

    assert_redirected_to indica_url(Indica.last)
  end

  test "should show indica" do
    get indica_url(@indica)
    assert_response :success
  end

  test "should get edit" do
    get edit_indica_url(@indica)
    assert_response :success
  end

  test "should update indica" do
    patch indica_url(@indica), params: { indica: {  } }
    assert_redirected_to indica_url(@indica)
  end

  test "should destroy indica" do
    assert_difference('Indica.count', -1) do
      delete indica_url(@indica)
    end

    assert_redirected_to indicas_url
  end
end
