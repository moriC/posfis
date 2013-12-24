class CreateProductValues < ActiveRecord::Migration
  def change
    create_table :product_values do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :order_id
      t.integer :value

      t.timestamps
    end
  end
end
