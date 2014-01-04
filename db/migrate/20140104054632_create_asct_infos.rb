class CreateAsctInfos < ActiveRecord::Migration
  def change
    create_table :asct_infos do |t|
      t.string :dealer
      t.string :manager
      t.integer :manager_number
      t.string :manager_address
      t.integer :manager_tel
      t.string :manager_mail
      t.text :additional_costs
      t.text :order_method
      t.text :pay_method
      t.text :pay_limit
      t.text :delivered_time
      t.text :return_method
      t.integer :condition

      t.timestamps
    end
  end
end
