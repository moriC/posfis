class CreateManageBlogs < ActiveRecord::Migration
  def change
    create_table :manage_blogs do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.text :content
      t.integer :condition

      t.timestamps
    end
  end
end
