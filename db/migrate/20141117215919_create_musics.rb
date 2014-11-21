class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.string :date
      t.string :content
      t.string :performer
      t.string :publisher

      t.timestamps
    end
  end
end
