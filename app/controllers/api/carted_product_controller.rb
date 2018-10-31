class Api::CartedProductController < ApplicationController


  def create
    user_id = current_user.id
    @cartedproduct = CartedProduct.new(
     user_id: user_id,
     product_id: params["product_id"],
     quantity: params["quantity"],
     status: "carted",
    )
    @cartedproduct.save
  end

  def index
    @cartedproducts = CartedProduct.where(user_id: current_user.id, status: "carted")
    render "index.json.jbuilder"
  end
end
