class RemoveLineCountFromPoems < ActiveRecord::Migration[5.1]
  def change
    remove_column :poems, :linecount, :integer
  end
end
