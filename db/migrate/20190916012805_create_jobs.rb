class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :company, foreign_key: true, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.timestamp :expired_at
      t.timestamp :closed_at

      t.timestamps
    end
  end
end
