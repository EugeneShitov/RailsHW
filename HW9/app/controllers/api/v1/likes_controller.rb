class LikesController < ApplicationController
  before_action :set_like, only: %i[show destroy]

  def index
    @likes = Like.all

    render json: @likes, status: :ok
  end

  def show
    render json: @like, status: :ok
  end

  def create
    @like = Like.create(like_params)
    if @like
      render json: @like, status: :ok
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def update
    if @like.update(like_params)
      render json: @like, status: :ok
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @like.destroy
      head :no_content
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  private

  def set_like
    @like = Like.find(params[:id])
  end

  def like_params
    params.require(:like).permit(:likeable_id, :likeable_type)
  end
end
