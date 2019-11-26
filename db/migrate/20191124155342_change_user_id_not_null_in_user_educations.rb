class ChangeUserIdNotNullInUserEducations < ActiveRecord::Migration[5.2]
  def change
    change_column_null :user_educations, :user_id, false
  end
end
