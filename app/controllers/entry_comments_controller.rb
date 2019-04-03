class EntryCommentsController < ApplicationController
  before_action :set_entry_comment, only: [:show, :update, :destroy]

  # GET /entry_comments
  def index
    @entry_comments = EntryComment.all

    render json: @entry_comments
  end

  # GET /entry_comments/1
  def show
    render json: @entry_comment
  end

  # POST /entry_comments
  def create
    @entry_comment = EntryComment.new(entry_comment_params)

    if @entry_comment.save
      render json: @entry_comment, status: :created, location: @entry_comment
    else
      render json: @entry_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entry_comments/1
  def update
    if @entry_comment.update(entry_comment_params)
      render json: @entry_comment
    else
      render json: @entry_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entry_comments/1
  def destroy
    @entry_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_comment
      @entry_comment = EntryComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entry_comment_params
      params.require(:entry_comment).permit(:content, :user_id, :entry_id)
    end
end
