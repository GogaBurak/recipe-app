class CreateUsersShoppingListsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_lists_users, :id => false do |t|
      t.integer :editor_id
      t.integer :shopping_list_id
    end
  end
end
