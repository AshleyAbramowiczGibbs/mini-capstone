class Product < ApplicationRecord
  def is_discounted?
    selling_price < 30
  end

  def tax
    selling_price * 0.09
  end

  def total
    selling_price + tax
  end
end

