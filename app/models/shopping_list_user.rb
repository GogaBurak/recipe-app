class ShoppingListsUsers < ApplicationRecord
  has_one :editor, class_name: 'User'
  has_one :shopping_list
end