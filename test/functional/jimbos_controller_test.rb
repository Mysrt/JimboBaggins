require 'test_helper'

class JimbosControllerTest < ActionController::TestCase
  setup do
    @jimbo = jimbos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jimbos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jimbo" do
    assert_difference('Jimbo.count') do
      post :create, :jimbo => @jimbo.attributes
    end

    assert_redirected_to jimbo_path(assigns(:jimbo))
  end

  test "should show jimbo" do
    get :show, :id => @jimbo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @jimbo.to_param
    assert_response :success
  end

  test "should update jimbo" do
    put :update, :id => @jimbo.to_param, :jimbo => @jimbo.attributes
    assert_redirected_to jimbo_path(assigns(:jimbo))
  end

  test "should destroy jimbo" do
    assert_difference('Jimbo.count', -1) do
      delete :destroy, :id => @jimbo.to_param
    end

    assert_redirected_to jimbos_path
  end
end
