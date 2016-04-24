require 'test_helper'

class StartUpsControllerTest < ActionController::TestCase
  setup do
    @start_up = start_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:start_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create start_up" do
    assert_difference('StartUp.count') do
      post :create, start_up: { image: @start_up.image, incubator_id: @start_up.incubator_id, location_id: @start_up.location_id, long_description: @start_up.long_description, name: @start_up.name, short_description: @start_up.short_description, stage_id: @start_up.stage_id, video: @start_up.video }
    end

    assert_redirected_to start_up_path(assigns(:start_up))
  end

  test "should show start_up" do
    get :show, id: @start_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @start_up
    assert_response :success
  end

  test "should update start_up" do
    patch :update, id: @start_up, start_up: { image: @start_up.image, incubator_id: @start_up.incubator_id, location_id: @start_up.location_id, long_description: @start_up.long_description, name: @start_up.name, short_description: @start_up.short_description, stage_id: @start_up.stage_id, video: @start_up.video }
    assert_redirected_to start_up_path(assigns(:start_up))
  end

  test "should destroy start_up" do
    assert_difference('StartUp.count', -1) do
      delete :destroy, id: @start_up
    end

    assert_redirected_to start_ups_path
  end
end
