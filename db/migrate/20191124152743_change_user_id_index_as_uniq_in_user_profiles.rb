class ChangeUserIdIndexAsUniqInUserProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :user_profiles, :users
    remove_index :user_profiles, :user_id
    add_foreign_key :user_profiles, :users
    add_index :user_profiles, :user_id, unique: true
  end
end
