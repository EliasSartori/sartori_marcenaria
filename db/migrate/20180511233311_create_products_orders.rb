class CreateProductsOrders < ActiveRecord::Migration
  def change
    create_table :products_orders do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.decimal :unitary_value
      t.decimal :total_value

      t.timestamps null: false
    end
  end
end
