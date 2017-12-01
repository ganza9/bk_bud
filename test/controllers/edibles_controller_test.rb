require 'test_helper'

class EdiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edible = edibles(:one)
  end

  test "should get index" do
    get edibles_url
    assert_response :success
  end

  test "should get new" do
    get new_edible_url
    assert_response :success
  end

  test "should create edible" do
    assert_difference('Edible.count') do
      post edibles_url, params: { edible: { description: @edible.description, indica_id: @edible.indica_id, name: @edible.name, price: @edible.price, sativa_id: @edible.sativa_id, thc: @edible.thc } }
    end

    assert_redirected_to edible_url(Edible.last)
  end

  test "should show edible" do
    get edible_url(@edible)
    assert_response :success
  end

  test "should get edit" do
    get edit_edible_url(@edible)
    assert_response :success
  end

  test "should update edible" do
    patch edible_url(@edible), params: { edible: { description: @edible.description, indica_id: @edible.indica_id, name: @edible.name, price: @edible.price, sativa_id: @edible.sativa_id, thc: @edible.thc } }
    assert_redirected_to edible_url(@edible)
  end

  test "should destroy edible" do
    assert_difference('Edible.count', -1) do
      delete edible_url(@edible)
    end

    assert_redirected_to edibles_url
  end
end
