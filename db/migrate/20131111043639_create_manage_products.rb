class CreateManageProducts < ActiveRecord::Migration
  def change
    create_table :manage_products do |t|

      t.timestamps
    end
  end
end
