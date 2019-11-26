class AddIndexToDepartments < ActiveRecord::Migration[5.0]
  def change
    add_index :departments, :name, unique: true
  end
end
