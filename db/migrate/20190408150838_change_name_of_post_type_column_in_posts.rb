class ChangeNameOfPostTypeColumnInPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :post_type, :is_text

  end
end
