require 'test_helper'

class WorkoutsessionsControllerTest < ActionController::TestCase
  setup do
    @workoutsession = workoutsessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workoutsessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workoutsession" do
    assert_difference('Workoutsession.count') do
      post :create, :workoutsession => @workoutsession.attributes
    end

    assert_redirected_to workoutsession_path(assigns(:workoutsession))
  end

  test "should show workoutsession" do
    get :show, :id => @workoutsession.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @workoutsession.to_param
    assert_response :success
  end

  test "should update workoutsession" do
    put :update, :id => @workoutsession.to_param, :workoutsession => @workoutsession.attributes
    assert_redirected_to workoutsession_path(assigns(:workoutsession))
  end

  test "should destroy workoutsession" do
    assert_difference('Workoutsession.count', -1) do
      delete :destroy, :id => @workoutsession.to_param
    end

    assert_redirected_to workoutsessions_path
  end
end
