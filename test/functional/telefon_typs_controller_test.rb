require 'test_helper'

class TelefonTypsControllerTest < ActionController::TestCase
  setup do
    @telefon_typ = telefon_typs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefon_typs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefon_typ" do
    assert_difference('TelefonTyp.count') do
      post :create, telefon_typ: { typ: @telefon_typ.typ }
    end

    assert_redirected_to telefon_typ_path(assigns(:telefon_typ))
  end

  test "should show telefon_typ" do
    get :show, id: @telefon_typ
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefon_typ
    assert_response :success
  end

  test "should update telefon_typ" do
    put :update, id: @telefon_typ, telefon_typ: { typ: @telefon_typ.typ }
    assert_redirected_to telefon_typ_path(assigns(:telefon_typ))
  end

  test "should destroy telefon_typ" do
    assert_difference('TelefonTyp.count', -1) do
      delete :destroy, id: @telefon_typ
    end

    assert_redirected_to telefon_typs_path
  end
end
