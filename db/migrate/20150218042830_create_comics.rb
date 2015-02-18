class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.integer :number
      t.string :publisher
      t.string :comic_box
      t.boolean :is_loaned
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
