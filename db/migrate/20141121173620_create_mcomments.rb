class CreateMcomments < ActiveRecord::Migration
  def change
    create_table :mcomments do |t|
      t.references :music, index: true
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
