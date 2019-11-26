class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true, null: false, index: {uniq: true}
      t.string :headline
      t.text :about

      t.timestamps
    end
  end
end
