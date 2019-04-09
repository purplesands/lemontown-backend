class AddDayIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :day_id, :integer
  end
end
