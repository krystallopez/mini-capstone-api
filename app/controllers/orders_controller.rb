class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index 
    orders = current_user.orders
    render json: orders.as_json
  end

 

  def show
    order_id = params["id"]
    order = Order.find_by(id: order_id)

    render json: orders.as_json
  end 

  
  
  def create 
    carted_products = current_user.carted_products.where(status: "carted")


    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal +=  carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    
    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal, # precision 9, scale 2
      tax: calculated_tax, # precision 9, scale 2
      total: calculated_total, # precision 9, scale 2
      )

    if order.save
      carted_products.update_all(status: "purchased", order_id: order.id)
      @order = order
      render json: order.as_json
    else  
      render json: {errors: order.errors.full_messages}, status: 422
    end
  end     
 
  def destroy
    order_id = params["id"]
    order = Order.find_by(id: order_id)
    order.destroy
    render json: { message: "Order Deleted successfully!" }
  end
end 