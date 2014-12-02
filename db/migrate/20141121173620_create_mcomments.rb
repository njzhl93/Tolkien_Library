class CreateMcomments < ActiveRecord::Migration
  def change
    create_table :mcomments do |t|
      t.integer :music_id
      t.text :body
      t.integer :user_id

      t.timestamps
    end
    add_index :mcomments, [:music_id, :user_id, :created_at]
  end
end
