require 'test_helper'

class CurtainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curtain = curtains(:one)
  end

  test "should get index" do
    get curtains_url
    assert_response :success
  end

  test "should get new" do
    get new_curtain_url
    assert_response :success
  end

  test "should create curtain" do
    assert_difference('Curtain.count') do
      post curtains_url, params: { curtain: { description: @curtain.description, name: @curtain.name, price: @curtain.price } }
    end

    assert_redirected_to curtain_url(Curtain.last)
  end

  test "should show curtain" do
    get curtain_url(@curtain)
    assert_response :success
  end

  test "should get edit" do
    get edit_curtain_url(@curtain)
    assert_response :success
  end

  test "should update curtain" do
    patch curtain_url(@curtain), params: { curtain: { description: @curtain.description, name: @curtain.name, price: @curtain.price } }
    assert_redirected_to curtain_url(@curtain)
  end

  test "should destroy curtain" do
    assert_difference('Curtain.count', -1) do
      delete curtain_url(@curtain)
    end

    assert_redirected_to curtains_url
  end
end
