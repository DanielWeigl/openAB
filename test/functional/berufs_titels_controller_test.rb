require 'test_helper'

class BerufsTitelsControllerTest < ActionController::TestCase
  setup do
    @berufs_titel = berufs_titels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:berufs_titels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create berufs_titel" do
    assert_difference('BerufsTitel.count') do
      post :create, berufs_titel: { titel: @berufs_titel.titel }
    end

    assert_redirected_to berufs_titel_path(assigns(:berufs_titel))
  end

  test "should show berufs_titel" do
    get :show, id: @berufs_titel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @berufs_titel
    assert_response :success
  end

  test "should update berufs_titel" do
    put :update, id: @berufs_titel, berufs_titel: { titel: @berufs_titel.titel }
    assert_redirected_to berufs_titel_path(assigns(:berufs_titel))
  end

  test "should destroy berufs_titel" do
    assert_difference('BerufsTitel.count', -1) do
      delete :destroy, id: @berufs_titel
    end

    assert_redirected_to berufs_titels_path
  end
end
