class Order < ApplicationRecord
  has_many :users, through: :cartedproducts
  has_many :cartedproducts
  has_many :products, through: :cartedproducts
end
