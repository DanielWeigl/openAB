require 'test_helper'

class AnredesControllerTest < ActionController::TestCase
  setup do
    @anrede = anredes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anredes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anrede" do
    assert_difference('Anrede.count') do
      post :create, anrede: { anrede: @anrede.anrede }
    end

    assert_redirected_to anrede_path(assigns(:anrede))
  end

  test "should show anrede" do
    get :show, id: @anrede
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anrede
    assert_response :success
  end

  test "should update anrede" do
    put :update, id: @anrede, anrede: { anrede: @anrede.anrede }
    assert_redirected_to anrede_path(assigns(:anrede))
  end

  test "should destroy anrede" do
    assert_difference('Anrede.count', -1) do
      delete :destroy, id: @anrede
    end

    assert_redirected_to anredes_path
  end
end
