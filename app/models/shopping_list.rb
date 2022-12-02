# can stare both recipes and ingredients
class ShoppingList < ApplicationRecord
  has_many :ingredients, through: :ingredients_shopping_lists
  belongs_to :user
  has_many :editors, through: :shopping_lists_users, class_name: 'User'
end
