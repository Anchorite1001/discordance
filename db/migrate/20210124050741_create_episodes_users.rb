class CreateEpisodesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes_users, :id => false do |t|
      t.integer :episode_id
      t.integer :user_id
    end
  end
end
