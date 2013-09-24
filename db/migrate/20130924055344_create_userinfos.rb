class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.integer :user_id
      t.integer :user_type
      t.integer :user_auth
      t.string :user_name
      t.string :user_address_number
      t.string :user_address

      t.timestamps
    end
  end
end
