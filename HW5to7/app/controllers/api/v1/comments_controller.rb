class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: %i[update destroy]
  before_action :set_article, only: %i[index show latest published unpublished]

  def index
    @comments = @article.comments

    render json: @comments, status: :ok
  end

  def show
    @comment = @article.comments.find(params[:id])

    render json: @comment, status: :ok
  end

  def status
    change_status = @comment.status == 'unpublished' ? 'published' : 'unpublished'
    @comment.update(status: change_status)

    redirect_to("/api/v1/articles/#{params[:article_id]}/comments/#{params[:id]}")
  end

  def latest
    @comments = @article.comments.last_ten

    render json: @comments, status: :ok
  end

  def published
    @comments = @article.comments.published

    render json: @comments, status: :ok
  end

  def unpublished
    @comments = @article.comments.unpublished

    render json: @comments, status: :ok
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @comment.destroy
      head :no_content
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:title, :body, :author_id, :article_id)
  end
end
