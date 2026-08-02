class ProductsController < ApplicationController
  before_action :set_product, only: [ :show, :edit, :update, :destroy ]
  def index
    # Rails use instance variables to pass data from the controller to the view.
    @products=Product.all
    puts @products.inspect
    # render json: @products[0]
  end
  def show
    @product=Product.find(params[:id])
    puts "--------------------------------"
    puts params.inspect
    puts @product.inspect
    puts "--------------------------------"
    # render json: @product.inspect
  end
  def new
    @product=Product.new
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @products
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
  end
  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end
  def update
    # @product is already available here too!
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end
  private
  def product_params
    puts params.inspect
    params.expect(product: [ :name ])
  end

  def set_product
    @product=Product.find(params[:id])
  end
end
