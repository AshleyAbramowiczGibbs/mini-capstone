class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :alteration_information
      t.integer :size
      t.string :color_one
      t.string :color_two
      t.string :brand
      t.string :length
      t.string :condition
      t.integer :original_price
      t.integer :selling_price
      t.string :seller
      t.string :image

      t.timestamps
    end
  end
end
