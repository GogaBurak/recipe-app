class CreateIngredientsShoppingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients_shopping_lists do |t|
      t.integer :ingredient_id, null: false
      t.integer :shopping_list_id, null: false
      t.integer :recipe_id, null: true

      t.timestamps
    end
  end
end
