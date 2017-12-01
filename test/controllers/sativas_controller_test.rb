require 'test_helper'

class SativasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sativa = sativas(:one)
  end

  test "should get index" do
    get sativas_url
    assert_response :success
  end

  test "should get new" do
    get new_sativa_url
    assert_response :success
  end

  test "should create sativa" do
    assert_difference('Sativa.count') do
      post sativas_url, params: { sativa: {  } }
    end

    assert_redirected_to sativa_url(Sativa.last)
  end

  test "should show sativa" do
    get sativa_url(@sativa)
    assert_response :success
  end

  test "should get edit" do
    get edit_sativa_url(@sativa)
    assert_response :success
  end

  test "should update sativa" do
    patch sativa_url(@sativa), params: { sativa: {  } }
    assert_redirected_to sativa_url(@sativa)
  end

  test "should destroy sativa" do
    assert_difference('Sativa.count', -1) do
      delete sativa_url(@sativa)
    end

    assert_redirected_to sativas_url
  end
end
