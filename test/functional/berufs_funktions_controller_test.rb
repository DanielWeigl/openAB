require 'test_helper'

class BerufsFunktionsControllerTest < ActionController::TestCase
  setup do
    @berufs_funktion = berufs_funktions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:berufs_funktions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create berufs_funktion" do
    assert_difference('BerufsFunktion.count') do
      post :create, berufs_funktion: { funktion: @berufs_funktion.funktion }
    end

    assert_redirected_to berufs_funktion_path(assigns(:berufs_funktion))
  end

  test "should show berufs_funktion" do
    get :show, id: @berufs_funktion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @berufs_funktion
    assert_response :success
  end

  test "should update berufs_funktion" do
    put :update, id: @berufs_funktion, berufs_funktion: { funktion: @berufs_funktion.funktion }
    assert_redirected_to berufs_funktion_path(assigns(:berufs_funktion))
  end

  test "should destroy berufs_funktion" do
    assert_difference('BerufsFunktion.count', -1) do
      delete :destroy, id: @berufs_funktion
    end

    assert_redirected_to berufs_funktions_path
  end
end
