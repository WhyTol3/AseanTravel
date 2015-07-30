require 'test_helper'

class CommentPlacesControllerTest < ActionController::TestCase
  setup do
    @comment_place = comment_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment_place" do
    assert_difference('CommentPlace.count') do
      post :create, comment_place: {  }
    end

    assert_redirected_to comment_place_path(assigns(:comment_place))
  end

  test "should show comment_place" do
    get :show, id: @comment_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment_place
    assert_response :success
  end

  test "should update comment_place" do
    patch :update, id: @comment_place, comment_place: {  }
    assert_redirected_to comment_place_path(assigns(:comment_place))
  end

  test "should destroy comment_place" do
    assert_difference('CommentPlace.count', -1) do
      delete :destroy, id: @comment_place
    end

    assert_redirected_to comment_places_path
  end
end
