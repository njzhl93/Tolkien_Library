class CreateBcomments < ActiveRecord::Migration
  def change
    create_table :bcomments do |t|
      t.integer :book_id
      t.text :body
      t.integer :user_id

      t.timestamps
    end
    add_index :bcomments, [:book_id, :user_id, :created_at]
  end
end
