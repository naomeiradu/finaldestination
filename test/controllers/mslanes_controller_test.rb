require 'test_helper'

class MslanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mslane = mslanes(:one)
  end

  test "should get index" do
    get mslanes_url
    assert_response :success
  end

  test "should get new" do
    get new_mslane_url
    assert_response :success
  end

  test "should create mslane" do
    assert_difference('Mslane.count') do
      post mslanes_url, params: { mslane: { Category: @mslane.Category, Cost: @mslane.Cost, Release: @mslane.Release, Title: @mslane.Title } }
    end

    assert_redirected_to mslane_url(Mslane.last)
  end

  test "should show mslane" do
    get mslane_url(@mslane)
    assert_response :success
  end

  test "should get edit" do
    get edit_mslane_url(@mslane)
    assert_response :success
  end

  test "should update mslane" do
    patch mslane_url(@mslane), params: { mslane: { Category: @mslane.Category, Cost: @mslane.Cost, Release: @mslane.Release, Title: @mslane.Title } }
    assert_redirected_to mslane_url(@mslane)
  end

  test "should destroy mslane" do
    assert_difference('Mslane.count', -1) do
      delete mslane_url(@mslane)
    end

    assert_redirected_to mslanes_url
  end
end
