require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show an movie" do
    get :show, {id: movies(:one).id }
    assert_response :success
  end

  test "should get a form for a new movie" do
    get :new
    assert_response :success
  end

  test "should create a new movie" do
    post_params = {movie: {name: "newmovie"}}  # "making a local variabel to control the parameters"
    post(:create, post_params)
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, {id: movies(:one).id }
    assert_response :success
  end

  test "should update the movie" do
    post_params = {movie: {name: "newmovie"}, id: movies(:one).id }  # "making a local variabel to control the parameters"
    patch :update, post_params
    assert_response :redirect
    assert_redirected_to show_movie_url(id: movies(:one).id)
  end

  test "should delete the movie and redirect" do
    delete :destroy, {id: movies(:one).id }
    assert_response :redirect
    assert_redirected_to({ controller: 'movies', action: 'index' })

  end

  test "should post an upvote" do
    @request.env['HTTP_REFERER'] = '/movies/show'
    post :upvote, {id: movies(:one).id }
    assert_response :redirect
  end

  test "Upvote increases the rank by 1" do
    assert_difference("Movie.find(movies(:one).id).rank", 1) do  # The 1 means that the count will go up by 1
      post_params = {id: movies(:one).id}
      @request.env['HTTP_REFERER'] = '/movies/show'
      post :upvote, post_params
    end
  end

end
