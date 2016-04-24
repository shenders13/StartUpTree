require 'test_helper'

class IncubatorsControllerTest < ActionController::TestCase
  setup do
    @incubator = incubators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incubators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incubator" do
    assert_difference('Incubator.count') do
      post :create, incubator: { name: @incubator.name }
    end

    assert_redirected_to incubator_path(assigns(:incubator))
  end

  test "should show incubator" do
    get :show, id: @incubator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incubator
    assert_response :success
  end

  test "should update incubator" do
    patch :update, id: @incubator, incubator: { name: @incubator.name }
    assert_redirected_to incubator_path(assigns(:incubator))
  end

  test "should destroy incubator" do
    assert_difference('Incubator.count', -1) do
      delete :destroy, id: @incubator
    end

    assert_redirected_to incubators_path
  end
end
