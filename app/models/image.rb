class Image < ApplicationRecord
  def product
    Product.find_by(id: product_id)
  end
  #belongs_to :product
end
