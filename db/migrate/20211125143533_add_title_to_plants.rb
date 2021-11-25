class AddTitleToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :title, :string
  end
end
