class PostCommentsController < ApplicationController
  before_action :set_post_comment, only: [:show, :update, :destroy]

  # GET /post_comments
  def index
    @post_comments = PostComment.all

    render json: @post_comments
  end

  # GET /post_comments/1
  def show
    render json: @post_comment
  end

  # POST /post_comments
  def create
    @post_comment = PostComment.new(post_comment_params)
      ActionCable.server.broadcast("location_two_feed_channel", @post_comment)

    if @post_comment.save
      render json: @post_comment, status: :created
    else
      render json: @post_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_comments/1
  def update
    if @post_comment.update(post_comment_params)
      render json: @post_comment
    else
      render json: @post_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_comments/1
  def destroy
    @post_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_comment
      @post_comment = PostComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_comment_params
      params.require(:post_comment).permit(:content, :user_id, :post_id)
    end
end
