class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.string :password_digest
      t.boolean :admin
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
