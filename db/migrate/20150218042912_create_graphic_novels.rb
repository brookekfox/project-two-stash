class CreateGraphicNovels < ActiveRecord::Migration
  def change
    create_table :graphic_novels do |t|
      t.string :title
      t.string :author
      t.integer :number
      t.string :publisher
      t.boolean :is_loaned
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
