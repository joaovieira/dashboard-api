require 'test_helper'

class WidgetsControllerTest < ActionController::TestCase
  setup do
    @widget = widgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:widgets)
  end

  test "should create widget" do
    assert_difference('Widget.count') do
      post :create, widget: {  }
    end

    assert_response 201
  end

  test "should show widget" do
    get :show, id: @widget
    assert_response :success
  end

  test "should update widget" do
    put :update, id: @widget, widget: {  }
    assert_response 204
  end

  test "should destroy widget" do
    assert_difference('Widget.count', -1) do
      delete :destroy, id: @widget
    end

    assert_response 204
  end
end
