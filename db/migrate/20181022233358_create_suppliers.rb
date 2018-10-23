class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :username
      t.string :email
      t.string :address
      t.decimal :balance, precision: 9, scale: 2
      t.string :location

      t.timestamps
    end
  end
end
