class ChangeNameNotNullInDepartments < ActiveRecord::Migration[5.2]
  def change
    change_column_null :departments, :name, false
  end
end
