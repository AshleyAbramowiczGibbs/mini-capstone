class Product < ApplicationRecord
  def is_discounted
    if selling_price < 30
      return true
    else
      return false
  end
end

  def tax
    selling_price * 0.09
  end

  def total
    selling_price + tax
  end
end
