class TagsController < ApplicationController
  before_action :set_tag, only: %i[show destroy]

  def index
    @tags = Tag.all

    render json: @tags, status: :ok
  end

  def show
    render json: @tag, status: :ok
  end

  def create
    @tag = Tag.create(tag_params)
    if @tag
      render json: @tag, status: :ok
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def update
    if @tag.update(like_params)
      render json: @tag, status: :ok
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @tag.destroy
      head :no_content
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
