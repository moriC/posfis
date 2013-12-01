class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :buyer_user_id
      t.string :business_user_id_integer
      t.integer :product_id
      t.string :express_token
      t.string :express_payer_id
      t.integer :condition

      t.timestamps
    end
  end
end
