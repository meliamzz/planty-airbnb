class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :category
      t.string :variety
      t.integer :height
      t.references :user, foreign_key: true
      t.string :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end
