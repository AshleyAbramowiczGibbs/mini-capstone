class Product < ApplicationRecord
  validates :selling_price, presence: true
  validates :selling_price, numericality: { only_decimal: true }
  validates :selling_price, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, length: { in: 10..500 }


  def is_discounted?
    selling_price < 30
  end

  def tax
    selling_price * 0.09
  end

  def total
    selling_price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def image
    Image.where(product_id: self.id)
  end
  #shortcut has_many :images

  def image_url_list
    list = []
    image.each do |image|
      list << image.url
    end
    list
  end

  has_many :orders
  has_many :categories

end

