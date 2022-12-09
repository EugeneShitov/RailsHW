class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Article.find(params[:article_id]).comments.all

    render json: @comments, status: :ok
  end

  def show
    @comment = Article.find(params[:article_id]).comments.find(params[:id])

    render json: @comment, status: :ok
  end

  def status
    change_status = Comment.find(params[:id]).status == 'unpublished' ? 'published' : 'unpublished'
    @comment = Comment.find(params[:id]).update(status: change_status)

    redirect_to("/api/v1/articles/#{params[:article_id]}/comments/#{params[:id]}")
  end

  def latest
    @comments = Article.find(params[:article_id]).comments.last_ten

    render json: @comments, status: :ok
  end

  def published
    @comments = Article.find(params[:article_id]).comments.published

    render json: @comments, status: :ok
  end

  def unpublished
    @comments = Article.find(params[:article_id]).comments.unpublished

    render json: @comments, status: :ok
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
      render json: @comment, status: :created
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
