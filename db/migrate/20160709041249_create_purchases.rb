class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :purchase_price
      t.string :user_id
      t.string :product_id

      t.timestamps null: false
    end
  end
end
