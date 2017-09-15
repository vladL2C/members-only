class RenameColumnPosts < ActiveRecord::Migration[5.1]
  def up
  	rename_column :posts, :comment, :comments
  end 
end
