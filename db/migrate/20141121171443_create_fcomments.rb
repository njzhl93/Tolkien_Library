class CreateFcomments < ActiveRecord::Migration
  def change
    create_table :fcomments do |t|
      t.integer :film_id
      t.text :body
      t.integer :user_id

      t.timestamps
    end
    add_index :fcomments, [:film_id, :user_id, :created_at]
  end
end
