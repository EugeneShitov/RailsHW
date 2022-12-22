class ProductsController < ApplicationController
  before_action :set_product, %i[show update destroy]

  def index
    Product.all
  end

  def show; end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update; end

  def destroy; end

  private

  def set_product
    @product = Product.new(product_params)
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :product_id)
  end
end
