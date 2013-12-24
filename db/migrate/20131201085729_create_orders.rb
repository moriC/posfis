class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :buyer_user_id
      t.integer :business_user_id
      t.integer :product_id
      t.integer :product_value
      t.string :express_token
      t.string :express_payer_id
      t.string :request_count
      t.string :price
      t.integer :send_condition
      t.string :name
      t.string :address_number
      t.string :address
      t.string :user_email
      t.string :user_tel
      t.integer :condition

      t.timestamps
    end
  end
end
