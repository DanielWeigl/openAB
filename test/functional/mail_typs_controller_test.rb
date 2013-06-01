require 'test_helper'

class MailTypsControllerTest < ActionController::TestCase
  setup do
    @mail_typ = mail_typs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_typs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_typ" do
    assert_difference('MailTyp.count') do
      post :create, mail_typ: { typ: @mail_typ.typ }
    end

    assert_redirected_to mail_typ_path(assigns(:mail_typ))
  end

  test "should show mail_typ" do
    get :show, id: @mail_typ
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_typ
    assert_response :success
  end

  test "should update mail_typ" do
    put :update, id: @mail_typ, mail_typ: { typ: @mail_typ.typ }
    assert_redirected_to mail_typ_path(assigns(:mail_typ))
  end

  test "should destroy mail_typ" do
    assert_difference('MailTyp.count', -1) do
      delete :destroy, id: @mail_typ
    end

    assert_redirected_to mail_typs_path
  end
end
