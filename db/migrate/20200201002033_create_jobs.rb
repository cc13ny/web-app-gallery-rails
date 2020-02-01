class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.references :company, foreign_key: true
      t.timestamp :paid_at
      t.timestamp :expires_at
      t.timestamp :closed_at

      t.timestamps
    end
  end
end
