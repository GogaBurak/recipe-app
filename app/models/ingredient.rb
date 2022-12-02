class Ingredient < ApplicationRecord
  has_and_belongs_to_many :recipes
  has_many :shopping_lists, through: :ingredients_shopping_lists
end
