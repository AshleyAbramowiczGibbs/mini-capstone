class ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.html.erb"
  end


  def new
    @supplier = Supplier.all
    render "new.html.erb"
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
      supplier_id: params["supplier_id"]
      )
      @product.save
      redirect_to "/products/#{@product.id}"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params["name"]
    @product.alteration_information = params["alteration_information"]
    @product.size = params["size"]
    @product.color_one = params["color_one"]
    @product.color_two = params["color_two"]
    @product.brand = params["brand"]
    @product.length = params["length"]
    @product.condition = params["condition"]
    @product.original_price = params["original_price"]
    @product.selling_price = params["selling_price"]
    @product.save!
    redirect_to "/products"
  end

  def destroy
    @products = Product.find_by(id: params[:id])
    @products.destroy
    redirect_to "/products"
  end
end
