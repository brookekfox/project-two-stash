class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_first
      t.string :author_last
      t.integer :year
      t.boolean :is_loaned
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
