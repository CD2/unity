require 'test_helper'

class MapControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get add_point" do
    get :add_point
    assert_response :success
  end

  test "should get remove_point" do
    get :remove_point
    assert_response :success
  end

end
