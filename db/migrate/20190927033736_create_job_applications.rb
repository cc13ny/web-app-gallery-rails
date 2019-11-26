class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.references :user, foreign_key: true, null: false
      t.references :job, foreign_key: true, null: false
      t.timestamp :applied_at

      t.timestamps
    end
  end
end
