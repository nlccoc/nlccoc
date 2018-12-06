require 'test_helper'

class MvideosControllerTest < ActionController::TestCase
  setup do
    @mvideo = mvideos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mvideos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mvideo" do
    assert_difference('Mvideo.count') do
      post :create, mvideo: { date: @mvideo.date, desc: @mvideo.desc, path: @mvideo.path, title: @mvideo.title }
    end

    assert_redirected_to mvideo_path(assigns(:mvideo))
  end

  test "should show mvideo" do
    get :show, id: @mvideo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mvideo
    assert_response :success
  end

  test "should update mvideo" do
    patch :update, id: @mvideo, mvideo: { date: @mvideo.date, desc: @mvideo.desc, path: @mvideo.path, title: @mvideo.title }
    assert_redirected_to mvideo_path(assigns(:mvideo))
  end

  test "should destroy mvideo" do
    assert_difference('Mvideo.count', -1) do
      delete :destroy, id: @mvideo
    end

    assert_redirected_to mvideos_path
  end
end
