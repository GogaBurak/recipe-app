class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      # t.bigint :user_id
      # t.references :transferable_as, index: true, foreign_key: {to_table: :courses}
      t.references :creator, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
