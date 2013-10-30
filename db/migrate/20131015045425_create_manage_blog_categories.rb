class CreateManageBlogCategories < ActiveRecord::Migration
  def change
    create_table :manage_blog_categories do |t|
      t.string :category_name
      t.integer :condition

      t.timestamps
    end
  end
end
