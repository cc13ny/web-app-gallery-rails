class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
      t.text :text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
