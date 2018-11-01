class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create
    product = CartedProduct.where(user_id: current_user.id, status: "carted")
    @order = Order.new(
      user_id: current_user.id, 
      subtotal: calculated_subtotal, #cartedproduct.quantity * product.selling_price,
      tax: calculated_tax, #cartedproduct.quantity * product.tax,
      total: calculated_total #subtotal + tax
    )
    if @order.save
      render json: {message: "You have a new order!" }, status: :created
    else
      render json: {errors: @order.errors.full_messages }, status: 422
    end
  end

  def update
    
  end

  def show
    
  end
end
