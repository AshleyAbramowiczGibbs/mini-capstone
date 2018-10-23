class ChangeOriginalPriceToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :original_price, :decimal, precision: 5, scale: 2
  end
end
