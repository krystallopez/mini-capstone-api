class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index , :show]
  
  def index
    if current_user
      @products = Product.all
      render template: "products/index"
    else
      render json: {message: "log in!"}
    end
  end 

  def show
    product_id = params["id"]
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end 

  def create
    product = Product.new( 
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
      
    )
    
    if product.save
      @product = product
      render template: "products/show"
    else
      render json: {errors: product.errors.full_messages}, status: 422
    end
  end



  def update 
    product_id = params["id"]
    product = Product.find_by(id: product_id)
  
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.supplier_id = params[:supplier_id] || product.supplier_id
  
    if product.save
      @product = product
      render template: "products/show"
    else
      render json: {errors: product.errors.full_messages}, status: 422
    end
  end

  def destroy 
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: {message: "Product has been successfully deleted."}
  end
end