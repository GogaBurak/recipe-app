class IngredientsShoppingList < ApplicationRecord
  belongs_to :ingredient
  belongs_to :shopping_list
  # optional
  belongs_to :recipe
end
