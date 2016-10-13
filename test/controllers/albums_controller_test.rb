require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show an album" do
    get :show, {id: albums(:one).id }
    assert_response :success
  end

  test "should get a form for a new album" do
    get :new
    assert_response :success
  end

  test "should create a new album" do
    post_params = {album: {name: "newalbum"}}
    post(:create, post_params)
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, {id: albums(:one).id }
    assert_response :success
  end

  test "should update the album" do
    post_params = {album: {name: "newalbum"}, id: albums(:one).id }
    patch :update, post_params
    assert_response :redirect
    assert_redirected_to show_album_url(id: albums(:one).id)
  end

  test "should delete the album and redirect" do
    delete :destroy, {id: albums(:one).id }
    assert_response :redirect
    assert_redirected_to({ controller: 'albums', action: 'index' })
  end

  test "should post an upvote" do
    @request.env['HTTP_REFERER'] = '/albums/show'
    post :upvote, {id: albums(:one).id }
    assert_response :redirect
  end

  test "Upvote increases the rank by 1" do
    assert_difference("Album.find(albums(:one).id).rank", 1) do  # The 1 means that the count will go up by 1
      post_params = {id: albums(:one).id}
      @request.env['HTTP_REFERER'] = '/albums/show'
      post :upvote, post_params
    end
  end

end
