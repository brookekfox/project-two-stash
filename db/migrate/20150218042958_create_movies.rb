class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :director
      t.string :writer
      t.string :format
      t.boolean :is_loaned
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
