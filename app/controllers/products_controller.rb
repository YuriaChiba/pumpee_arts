class ProductsController < ApplicationController
  before_action :set_product, only: [ :show, :edit, :update, :destroy]
  def index
    @q = Product.all.order(created_at: :desc).ransack(params[:q])
    @products = @q.result.page(params[:page]).per(20)
    @new_products = Product.order(create_at: :desc).limit(5)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: '投稿に成功しました。'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: '更新に成功しました'
    else
      render
    end
  end

  def destroy
    @Product.destroy
    redirect_to "/posts"
  end


  private

  def product_params
    params.require(:product).permit(:name, :lowest_price, :detail, :user_id, :category)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
