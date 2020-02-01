class CreatePositionVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :position_variants do |t|
      t.string :name

      t.timestamps
    end
  end
end
