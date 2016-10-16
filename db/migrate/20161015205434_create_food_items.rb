class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
