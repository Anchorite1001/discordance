class CreateEpisodesSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes_speakers, :id => false do |t|
      t.integer :episode_id
      t.integer :speaker_id
    end
  end
end
