class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true, null: false
      t.string :password_digest, unique: true, null: false

      t.timestamps
    end
  end
end
