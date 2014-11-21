class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :date
      t.string :content
      t.string :director
      t.string :character

      t.timestamps
    end
  end
end
