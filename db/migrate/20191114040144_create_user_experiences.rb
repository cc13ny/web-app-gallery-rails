class CreateUserExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :user_experiences do |t|
      t.references :user, foreign_key: true, null: false
      t.string :employer_name
      t.integer :company_id #allow to be null since the company may be not in our db
      t.integer :start_year
      t.integer :start_month
      t.integer :end_year
      t.integer :end_month
      t.boolean :current
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
