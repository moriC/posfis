class CreateLogTypes < ActiveRecord::Migration
  def change
    create_table :log_types do |t|
      t.string :type_name
      t.integer :type_condition

      t.timestamps
    end
  end
end
