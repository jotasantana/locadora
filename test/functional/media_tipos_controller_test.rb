require 'test_helper'

class MediaTiposControllerTest < ActionController::TestCase
  setup do
    @media_tipo = media_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_tipo" do
    assert_difference('MediaTipo.count') do
      post :create, :media_tipo => @media_tipo.attributes
    end

    assert_redirected_to media_tipo_path(assigns(:media_tipo))
  end

  test "should show media_tipo" do
    get :show, :id => @media_tipo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @media_tipo.to_param
    assert_response :success
  end

  test "should update media_tipo" do
    put :update, :id => @media_tipo.to_param, :media_tipo => @media_tipo.attributes
    assert_redirected_to media_tipo_path(assigns(:media_tipo))
  end

  test "should destroy media_tipo" do
    assert_difference('MediaTipo.count', -1) do
      delete :destroy, :id => @media_tipo.to_param
    end

    assert_redirected_to media_tipos_path
  end
end
