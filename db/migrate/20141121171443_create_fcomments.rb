class CreateFcomments < ActiveRecord::Migration
  def change
    create_table :fcomments do |t|
      t.references :film, index: true
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
