class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.all

    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

  def status
    @comment = Comment.find(params[:id])
    @comment.status == 'unpublished' ? 'published' : 'unpublished'

    render json: @comment
  end

  def published
    @comments = Comment.published

    render json: @comments
  end

  def unpublished
    @comments = Comment.unpublished

    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :author_id, :article_id)
  end
end
