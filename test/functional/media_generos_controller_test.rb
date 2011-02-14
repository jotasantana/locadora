require 'test_helper'

class MediaGenerosControllerTest < ActionController::TestCase
  setup do
    @media_genero = media_generos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_generos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_genero" do
    assert_difference('MediaGenero.count') do
      post :create, :media_genero => @media_genero.attributes
    end

    assert_redirected_to media_genero_path(assigns(:media_genero))
  end

  test "should show media_genero" do
    get :show, :id => @media_genero.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @media_genero.to_param
    assert_response :success
  end

  test "should update media_genero" do
    put :update, :id => @media_genero.to_param, :media_genero => @media_genero.attributes
    assert_redirected_to media_genero_path(assigns(:media_genero))
  end

  test "should destroy media_genero" do
    assert_difference('MediaGenero.count', -1) do
      delete :destroy, :id => @media_genero.to_param
    end

    assert_redirected_to media_generos_path
  end
end
