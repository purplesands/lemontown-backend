class AddWord4AndWord5ColumnsToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :word4, :string
    add_column :days, :word5, :string

  end
end
