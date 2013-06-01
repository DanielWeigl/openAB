require 'test_helper'

class AkademischerTitelsControllerTest < ActionController::TestCase
  setup do
    @akademischer_titel = akademischer_titels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:akademischer_titels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create akademischer_titel" do
    assert_difference('AkademischerTitel.count') do
      post :create, akademischer_titel: { titel: @akademischer_titel.titel }
    end

    assert_redirected_to akademischer_titel_path(assigns(:akademischer_titel))
  end

  test "should show akademischer_titel" do
    get :show, id: @akademischer_titel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @akademischer_titel
    assert_response :success
  end

  test "should update akademischer_titel" do
    put :update, id: @akademischer_titel, akademischer_titel: { titel: @akademischer_titel.titel }
    assert_redirected_to akademischer_titel_path(assigns(:akademischer_titel))
  end

  test "should destroy akademischer_titel" do
    assert_difference('AkademischerTitel.count', -1) do
      delete :destroy, id: @akademischer_titel
    end

    assert_redirected_to akademischer_titels_path
  end
end
