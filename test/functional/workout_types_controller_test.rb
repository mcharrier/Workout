require 'test_helper'

class WorkoutTypesControllerTest < ActionController::TestCase
  setup do
    @workout_type = workout_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_type" do
    assert_difference('WorkoutType.count') do
      post :create, :workout_type => @workout_type.attributes
    end

    assert_redirected_to workout_type_path(assigns(:workout_type))
  end

  test "should show workout_type" do
    get :show, :id => @workout_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @workout_type.to_param
    assert_response :success
  end

  test "should update workout_type" do
    put :update, :id => @workout_type.to_param, :workout_type => @workout_type.attributes
    assert_redirected_to workout_type_path(assigns(:workout_type))
  end

  test "should destroy workout_type" do
    assert_difference('WorkoutType.count', -1) do
      delete :destroy, :id => @workout_type.to_param
    end

    assert_redirected_to workout_types_path
  end
end
