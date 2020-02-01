class CreateUserExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :user_experiences do |t|
      t.references :user, foreign_key: true
      t.string :company_name
      t.references :company, foreign_key: true
      t.string :title
      t.references :position_variant, foreign_key: true
      t.integer :start_year
      t.integer :start_month
      t.integer :end_year
      t.integer :end_month
      t.binary :present
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
