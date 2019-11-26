class ChangeJobIdNotNullInJobApplications < ActiveRecord::Migration[5.2]
  def change
    change_column_null :job_applications, :job_id, false
  end
end
