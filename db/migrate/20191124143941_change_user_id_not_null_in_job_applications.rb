class ChangeUserIdNotNullInJobApplications < ActiveRecord::Migration[5.2]
  def change
    change_column_null :job_applications, :user_id, false
  end
end
