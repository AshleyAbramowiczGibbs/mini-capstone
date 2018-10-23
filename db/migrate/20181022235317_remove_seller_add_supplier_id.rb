class RemoveSellerAddSupplierId < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :seller, :string
    add_column :products, :supplier_id, :integer
  end
end
