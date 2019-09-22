class AddTitleToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :title, :string, after: :id
  end
end
