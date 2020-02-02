class CreateJobApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :job_applications do |t|
      t.references :job, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamp :withdrawn_at
      t.timestamp :applied_at

      t.timestamps
    end
  end
end
