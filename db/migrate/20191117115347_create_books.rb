class CreateBooks < ActiveRecord::Migration[5.2]
  def up
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :ISBN
      t.text :description
      t.string :language
      t.string :image
      t.boolean :delta, :default => true, :null => false
      t.timestamps
    end
    add_index :books, :delta
  end
end
