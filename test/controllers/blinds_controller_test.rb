require 'test_helper'

class BlindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blind = blinds(:one)
  end

  test "should get index" do
    get blinds_url
    assert_response :success
  end

  test "should get new" do
    get new_blind_url
    assert_response :success
  end

  test "should create blind" do
    assert_difference('Blind.count') do
      post blinds_url, params: { blind: { description: @blind.description, name: @blind.name, price: @blind.price } }
    end

    assert_redirected_to blind_url(Blind.last)
  end

  test "should show blind" do
    get blind_url(@blind)
    assert_response :success
  end

  test "should get edit" do
    get edit_blind_url(@blind)
    assert_response :success
  end

  test "should update blind" do
    patch blind_url(@blind), params: { blind: { description: @blind.description, name: @blind.name, price: @blind.price } }
    assert_redirected_to blind_url(@blind)
  end

  test "should destroy blind" do
    assert_difference('Blind.count', -1) do
      delete blind_url(@blind)
    end

    assert_redirected_to blinds_url
  end
end
