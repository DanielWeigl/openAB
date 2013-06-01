require 'test_helper'

class FaxTypsControllerTest < ActionController::TestCase
  setup do
    @fax_typ = fax_typs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fax_typs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fax_typ" do
    assert_difference('FaxTyp.count') do
      post :create, fax_typ: { typ: @fax_typ.typ }
    end

    assert_redirected_to fax_typ_path(assigns(:fax_typ))
  end

  test "should show fax_typ" do
    get :show, id: @fax_typ
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fax_typ
    assert_response :success
  end

  test "should update fax_typ" do
    put :update, id: @fax_typ, fax_typ: { typ: @fax_typ.typ }
    assert_redirected_to fax_typ_path(assigns(:fax_typ))
  end

  test "should destroy fax_typ" do
    assert_difference('FaxTyp.count', -1) do
      delete :destroy, id: @fax_typ
    end

    assert_redirected_to fax_typs_path
  end
end
