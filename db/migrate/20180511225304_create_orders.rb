class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.decimal :amount
      t.boolean :delivered

      t.timestamps null: false
    end
  end
end
