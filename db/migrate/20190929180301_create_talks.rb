class CreateTalks < ActiveRecord::Migration[5.0]
  def change
    create_table :talks do |t|
      t.string :name
      t.string :guest_name
      t.integer :user_id
      t.boolean :published
      t.datetime :published_at

      t.timestamps
    end
  end
end
