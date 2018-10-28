class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create
    product = Product.find_by(id: params[:product_id])
    @order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.selling_price * params[:quantity].to_i,
      tax: params[:quantity].to_i * product.tax,
      total: product.selling_price * params[:quantity].to_i + product.tax
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
