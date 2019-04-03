class CreateEntryComments < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :entry_id

      t.timestamps
    end
  end
end
