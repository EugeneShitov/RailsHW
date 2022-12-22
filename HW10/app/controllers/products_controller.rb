class ProductsController < ApplicationController
  before_action :set_product, %i[show update destroy]

  def index
    @products = Product.all
  end

  def show; end

  def update; end

  def destroy; end

  private

  def set_product
    @product = Product.new(product_params)
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :category)
  end
end
