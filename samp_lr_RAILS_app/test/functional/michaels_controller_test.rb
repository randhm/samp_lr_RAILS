require 'test_helper'

class MichaelsControllerTest < ActionController::TestCase
  setup do
    @michael = michaels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:michaels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create michael" do
    assert_difference('Michael.count') do
      post :create, michael: {  }
    end

    assert_redirected_to michael_path(assigns(:michael))
  end

  test "should show michael" do
    get :show, id: @michael
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @michael
    assert_response :success
  end

  test "should update michael" do
    put :update, id: @michael, michael: {  }
    assert_redirected_to michael_path(assigns(:michael))
  end

  test "should destroy michael" do
    assert_difference('Michael.count', -1) do
      delete :destroy, id: @michael
    end

    assert_redirected_to michaels_path
  end
end
