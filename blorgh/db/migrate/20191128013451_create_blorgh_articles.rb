class CreateBlorghArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :blorgh_articles do |t|

      t.timestamps
    end
  end
end
