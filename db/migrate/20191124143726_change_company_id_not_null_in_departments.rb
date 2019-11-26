class ChangeCompanyIdNotNullInDepartments < ActiveRecord::Migration[5.2]
  def change
    change_column_null :departments, :company_id, false
  end
end
