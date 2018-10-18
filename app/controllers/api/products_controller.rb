class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params["name"],
      description: params["description"],
      alteration_information: params["aleration_information"],
      size: params["size"],
      color_one: params["color_one"],
      color_two: params["color_two"],
      brand: params["brand"],
      length: params["length"],
      condition: params["condition"],
      original_price: params["original_price"],
      selling_price: params["selling_price"],
      seller: params["seller"],
      image: params["image"]
      )
    @product.save
    render "show.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params["name"] || @product.name
    @product.description = params["description"] || @product.description
    @product.alteration_information = params["alteration_information"] || @product.alteration_information
    @product.size = params["size"] || @product.size
    @product.color_one = params["color_one"] || @product.color_one
    @product.color_two = params["color_two"] || @product.color_two 
    @product.brand = params["brand"] || @product.brand
    @product.length = params["length"] || @product.length
    @product.condition = params["condition"] || @product.condition
    @product.original_price = params["original_price"] || @product.original_price
    @product.selling_price = params["selling_price"] || @product.selling_price
    @product.seller = params["seller"] || @product.seller
    @product.image = params["image"] || @product.image
    @product.save
    render "show.json.jbuilder"
  end

  def destroy
    @products = product.find_by(id: params[:id])
    @products.destroy
    render json: {message: "this is destroyed!!!"}
  end
end
