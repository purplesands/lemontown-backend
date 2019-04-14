class AddIndexToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :date, :string
    add_index :days, [:date], unique: true

  end
end
