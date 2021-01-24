class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.text :name
      t.text :host_or_guest
      t.text :image
      t.text :introduction

      t.timestamps
    end
  end
end
