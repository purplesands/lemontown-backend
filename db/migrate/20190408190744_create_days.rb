class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :word1
      t.string :word2
      t.string :word3

      t.timestamps
    end
  end
end
