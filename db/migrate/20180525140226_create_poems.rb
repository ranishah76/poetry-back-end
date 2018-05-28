class CreatePoems < ActiveRecord::Migration[5.1]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :lines
      t.integer :linecount

      t.timestamps
    end
  end
end
