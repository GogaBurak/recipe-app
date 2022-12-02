class User < ApplicationRecord
  has_secure_password
  has_many :shopping_lists
  has_many :recipes
  validates :email, presence: true
  validates :password, presence: true,
            if: -> { :new_record? || password.nil? }
end
