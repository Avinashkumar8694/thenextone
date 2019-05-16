class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :product_name
      t.string :category
      t.string :product_link
      t.string :discription
      t.integer :sell_price
      t.integer :purchase_price
      t.integer :discount

      t.timestamps
    end
  end
end
