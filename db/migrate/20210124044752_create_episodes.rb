class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.text :title
      t.text :image
      t.text :player
      t.text :introduction
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
