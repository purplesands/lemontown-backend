require 'test_helper'

class EntryCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_comment = entry_comments(:one)
  end

  test "should get index" do
    get entry_comments_url, as: :json
    assert_response :success
  end

  test "should create entry_comment" do
    assert_difference('EntryComment.count') do
      post entry_comments_url, params: { entry_comment: { content: @entry_comment.content, entry_id: @entry_comment.entry_id, user_id: @entry_comment.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show entry_comment" do
    get entry_comment_url(@entry_comment), as: :json
    assert_response :success
  end

  test "should update entry_comment" do
    patch entry_comment_url(@entry_comment), params: { entry_comment: { content: @entry_comment.content, entry_id: @entry_comment.entry_id, user_id: @entry_comment.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy entry_comment" do
    assert_difference('EntryComment.count', -1) do
      delete entry_comment_url(@entry_comment), as: :json
    end

    assert_response 204
  end
end
