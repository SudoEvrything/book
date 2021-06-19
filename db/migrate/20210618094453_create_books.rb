class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :book_id
      t.string :book_title

      t.timestamps
    end
    add_index :books, :book_id
  end
end
