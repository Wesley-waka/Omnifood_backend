class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.references :deliverer, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.boolean :status
      t.float :subtotal
      t.integer :quantity
      t.timestamps :order_date

      
    end
  end
end
