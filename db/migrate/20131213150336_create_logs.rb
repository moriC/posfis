class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :for_user_id
      t.integer :log_type
      t.text :log_message

      t.timestamps
    end
  end
end
