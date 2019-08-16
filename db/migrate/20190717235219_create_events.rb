class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :organizer_name
      t.integer :user_id # creator?
      t.text :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :published
      t.datetime :published_at
      # t.boolean :active
      # t.datetime :active_at

      t.timestamps
    end
    add_index :events, :starts_at
    add_index :events, :ends_at
  end
end