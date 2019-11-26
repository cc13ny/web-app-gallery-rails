class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.references :company, foreign_key: true, null: false
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
