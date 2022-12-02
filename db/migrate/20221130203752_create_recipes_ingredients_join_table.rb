class CreateRecipesIngredientsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :recipes, :ingredients
  end
end
