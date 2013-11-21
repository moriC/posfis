class CreateManageProducts < ActiveRecord::Migration
  def change
    create_table :manage_products do |t|
      t.string :product_name
      t.integer :product_type_id
      t.integer :price
      t.integer :sp_price
      t.integer :count
      t.integer :delivery_fee
      t.integer :delivery_type_id
      t.text :contents
      t.attachment :picture
      t.integer :condition
      t.timestamps
    end
  end
end
