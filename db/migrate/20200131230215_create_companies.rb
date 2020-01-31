class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :business_name
      t.text :description

      t.timestamps
    end
  end
end
