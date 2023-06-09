class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :food_name
      t.string :food_category
      t.float :food_price
      t.string :food_details

      t.timestamps
    end
  end
end
