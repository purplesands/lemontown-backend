class FixFollowingColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :followings, :friend_id, :followed_user_id
  end
end
