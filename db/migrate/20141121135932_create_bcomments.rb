class CreateBcomments < ActiveRecord::Migration
  def change
    create_table :bcomments do |t|
      t.references :book, index: true
      t.text :body
      t.integer :user_id

      t.timestamps
    end
    add_index :bcomments, [:user_id, :created_at]
  end
end
