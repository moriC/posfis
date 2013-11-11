class CreateManageFriends < ActiveRecord::Migration
  def change
    create_table :manage_friends do |t|
      t.integer :from_user_id
      t.integer :to_user_id

      t.timestamps
    end
  end
end
