class CreateTvSeasons < ActiveRecord::Migration
  def change
    create_table :tv_seasons do |t|
      t.string :title
      t.integer :season
      t.integer :year
      t.string :show_runner
      t.string :network
      t.string :format
      t.boolean :is_loaned
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
