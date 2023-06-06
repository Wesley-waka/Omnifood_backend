class CreateDeliverers < ActiveRecord::Migration[7.0]
  def change
    create_table :deliverers do |t|
      t.string :user_name
      t.integer :regestration_vehicle
      t.integer :phone
      t.string :address
      t.string :email

      # t.timestamps
    end
  end
end
