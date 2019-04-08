class DeleteTextColumnInPostsAddNewOne < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :is_text
    add_column :posts, :is_image, :boolean
  end
end
