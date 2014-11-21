class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :date
      t.string :content
      t.string :writer
      t.string :publisher

      t.timestamps
    end
  end
end
