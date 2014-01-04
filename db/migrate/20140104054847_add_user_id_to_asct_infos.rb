class AddUserIdToAsctInfos < ActiveRecord::Migration
  def change
    add_column :asct_infos, :user_id, :integer
  end
end
