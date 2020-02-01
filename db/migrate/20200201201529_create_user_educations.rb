class CreateUserEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_educations do |t|
      t.references :user, foreign_key: true
      t.string :school_name
      t.string :degree
      t.string :field_of_study
      t.integer :start_year
      t.integer :start_month
      t.integer :end_year
      t.integer :end_month
      t.string :grade
      t.text :description

      t.timestamps
    end
  end
end
