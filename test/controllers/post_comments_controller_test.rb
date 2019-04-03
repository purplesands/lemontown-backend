require 'test_helper'

class PostCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_comment = post_comments(:one)
  end

  test "should get index" do
    get post_comments_url, as: :json
    assert_response :success
  end

  test "should create post_comment" do
    assert_difference('PostComment.count') do
      post post_comments_url, params: { post_comment: { content: @post_comment.content, post_id: @post_comment.post_id, user_id: @post_comment.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show post_comment" do
    get post_comment_url(@post_comment), as: :json
    assert_response :success
  end

  test "should update post_comment" do
    patch post_comment_url(@post_comment), params: { post_comment: { content: @post_comment.content, post_id: @post_comment.post_id, user_id: @post_comment.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy post_comment" do
    assert_difference('PostComment.count', -1) do
      delete post_comment_url(@post_comment), as: :json
    end

    assert_response 204
  end
end
